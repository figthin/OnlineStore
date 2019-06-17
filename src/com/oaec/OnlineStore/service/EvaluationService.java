package com.oaec.OnlineStore.service;

import java.util.List;
import java.util.Map;

public interface EvaluationService {
    List<Map<String,Object>> query(String productId);

    Map<String,List<Map<String,Object>>> queryGrade(String productId);
}
