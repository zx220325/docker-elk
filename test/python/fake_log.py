import logging
import logstash

host = 'localhost'

test_logger = logging.getLogger('python-logstash-logger')
test_logger.setLevel(logging.DEBUG)
test_logger.addHandler(logstash.TCPLogstashHandler(host, 50000, version=1))

N = 10
for i in range(N):
    extra_fields = {'msg_id': i, 'project': 'xin_test'}
    test_logger.error(f'python-logstash: test logstash error message.', extra=extra_fields)
    test_logger.info(f'python-logstash: test logstash info message.', extra=extra_fields)
    test_logger.warning(f'python-logstash: test logstash warning message.', extra=extra_fields)