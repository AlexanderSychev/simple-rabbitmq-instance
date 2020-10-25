FROM rabbitmq:3.8.9-management-alpine
RUN cd /opt/rabbitmq/plugins && \
  wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez
RUN chown rabbitmq:rabbitmq /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange-3.8.0.ez
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
RUN rabbitmq-plugins enable --offline rabbitmq_consistent_hash_exchange
