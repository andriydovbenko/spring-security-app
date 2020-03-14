package com.training.service.impl;

import com.training.domain.Message;
import com.training.repository.MessageRepository;
import com.training.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {

    private final MessageRepository repository;

    @Autowired
    public MessageServiceImpl(MessageRepository repository) {
        this.repository = repository;
    }

    @Override
    public Iterable<Message> findByTag(String tag) {
        return repository.findByTag(tag);
    }

    @Override
    public Iterable<Message> findAll() {
        return repository.findAll();
    }

    @Override
    public void save(Message message) {
        repository.save(message);
    }
}