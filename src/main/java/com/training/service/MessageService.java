package com.training.service;

import com.training.domain.Message;

public interface MessageService {

    Iterable<Message> findByTag(String tag);

    Iterable<Message> findAll();

    void save(Message message);
}
