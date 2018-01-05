FROM magichuihui/phalcon-php56:v1.1

COPY files/shopnc.so /usr/local/lib/php/extensions/no-debug-non-zts-20131226/

RUN cd /usr/local/src \
    && curl -LO http://downloads.zend.com/guard/7.0.0/zend-loader-php5.6-linux-x86_64.tar.gz \
    && tar zxvf zend-loader-php5.6-linux-x86_64.tar.gz \
    && cd zend-loader-php5.6-linux-x86_64 \
    && mv ZendGuardLoader.so /usr/local/lib/php/extensions/no-debug-non-zts-20131226/ \
    && cd .. && rm -rf zend-loader-php5.6* \
    && echo '[zendloader]\n\
zend_loader.enable=1\n\
zend_extension= /usr/local/lib/php/extensions/no-debug-non-zts-20131226/ZendGuardLoader.so\n\
zend_loader.disable_licensing=0\n\
zend_loader.obfuscation_level_support=3\n\
zend_loader.license_path=\n\
[NC]\n\
extension=shopnc.so' >> /usr/local/etc/php/conf.d/shopnc.ini
