package com.kk.webvote.dao;

import com.kk.webvote.entity.Vote;
import org.springframework.stereotype.Component;

@Component
public interface VoteMapper {

    public void addVote(Vote vote);

}
