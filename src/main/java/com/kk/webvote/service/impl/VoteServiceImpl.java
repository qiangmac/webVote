package com.kk.webvote.service.impl;

import com.kk.webvote.dao.VoteMapper;
import com.kk.webvote.entity.Vote;
import com.kk.webvote.service.VoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class VoteServiceImpl implements VoteService {

    @Autowired
    VoteMapper voteMapper;

    /**
     *
     * @param vote 投票实体类
     * @return try catch捕获异常,当成功添加时返回true,发生异常时向控制台打印错误信息,并且返回false,
     * 由controller层对返回结果做处理
     */
    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean addVote(Vote vote) {
        try{
            voteMapper.addVote(vote);
            return true;
        }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
