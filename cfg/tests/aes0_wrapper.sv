// scanning approach:
// first traversal: gather all identifiers in assign Stmts
// second traversal:
//      visit every assignStmt node:
//          if(lhs ≈≈ otherIdent):
//              assert(rhs ≈≈ otherIdent.rhs)
assign key_big0    = debug_mode_i ? 192'b0 : {key0[0], key0[1], key0[2], key0[3], key0[4], key0[5]}; 
assign key_big1    = debug_mode_i ? 192'b0 : {key1[0], key1[1], key1[2], key1[3], key1[4], key1[5]}; 
assign key_big2    = {key2[0], key2[1], key2[2], key2[3], key2[4], key2[5]};

// a structurally different but semantically similar design complicates things because each identifier now has multiple assignStmts and we would have to keep track of each

// a sensible approach might be to localize to sibling nodes: assign stmts that have the same parent with similar identifiers must have similar rhs exprs
// we now have a false negative

// another approach might be to find "matches" for each possible rhs
// this will detect the true positive if we flash missing matches
always_comb begin
    if(debug_mode_i) begin
        key_big0 = 192'b0;
        key_big1 = 192'b0;
    end
    else begin
        key_big0 = {key0[0], key0[1], key0[2], key0[3], key0[4], key0[5]};  
        key_big1 = {key1[0], key1[1], key1[2], key1[3], key1[4], key1[5]}; 
    end
    key_big2 = {key2[0], key2[1], key2[2], key2[3], key2[4], key2[5]};
end

// the second approach fails and returns a false positive for key_big2
// we can account for this, but we run into a tradeoff of increasing complexity and false negatives/positives rates
// for example, what if the ternary expression is incorrect? // what if the conditions are nested?
// how can we capture the semantic similarities? A CFG!
// explain cfg approach using figure
// the cfg captures more of the semantics/"intent"
// we need to determine if we are in the same "control context"

// cfg approach:
    // find similar identifiers
    //   for each assignment:
    //      traverse up the CFG until a procStart or condEnd node (why? because of nested if-else)
    //      accumulate conditions
    //      two possible errors:
    //            1. is the assignment rhs different even though the conditions are similar?
    //            2. are the conditions different even though the assignment is similar?
always_comb begin
    if(debug_mode_i) begin
        key_big0 = 192'b0;
        key_big1 = 192'b0;
    end
    else begin
        key_big0 = {key0[0], key0[1], key0[2], key0[3], key0[4], key0[5]};  
        key_big1 = {key1[0], key1[1], key1[2], key1[3], key1[4], key1[5]}; 
    end
    key_big2 = debug_mode_i ? 192'b0 : {key2[0], key2[1], key2[2], key2[3], key2[4], key2[5]};
end


// how can this improve an existing CWEAT scanner? CWE-1262

else if(en && we)
    case(address[7:3])
        0:
            reglk_mem[0]  <= reglk_ctrl[3] ? reglk_mem[0] : wdata;
        1:
            reglk_mem[1]  <= reglk_ctrl[1] ? reglk_mem[1] : wdata; 
        2:
            reglk_mem[2]  <= reglk_ctrl[1] ? reglk_mem[3] : wdata;
        3:
            reglk_mem[3]  <= reglk_ctrl[1] ? reglk_mem[3] : wdata;
        4:
            reglk_mem[4]  <= reglk_ctrl[1] ? reglk_mem[4] : wdata;
        5:
            reglk_mem[5]  <= reglk_ctrl[1] ? reglk_mem[5] : wdata;
        default:
            ;
    endcase

