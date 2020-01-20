package com.opencloud.msg.test;

import com.opencloud.msg.exchanger.EmailExchanger;
import com.opencloud.msg.exchanger.SmsExchanger;
import com.opencloud.msg.exchanger.WebSocketExchanger;
import com.opencloud.msg.service.*;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author woodev
 */
@Configuration
@AutoConfigureAfter({SmsConfiguration.class})
public class ExchangerConfiguration {

    @Bean
    public SmsExchanger smsExchanger(SmsSender smsSender) {
        return new SmsExchanger(smsSender);
    }

    @Bean
    public EmailExchanger emailExchanger(EmailSender mailSender,
                                         EmailConfigService emailConfigService,
                                         EmailTemplateService emailTemplateService,
                                         EmailLogsService emailLogsService) {
        return new EmailExchanger(mailSender, emailConfigService, emailTemplateService, emailLogsService);
    }

    @Bean
    public WebSocketExchanger webSocketExchanger() {
        return new WebSocketExchanger();
    }
}
