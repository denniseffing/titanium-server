function onUse(cid, item, frompos, item2, topos)
-- Orange tree - by Alreth (v1.00)
    orangetreeid = 4006   -- Itemid of the orangetree
     treeid =  4008      -- Itemid of the empty orangetree
    orangeid = 2675  -- Itemid of oranges
    
    doTransformItem(item.uid, treeid)
    doCreateItem(orangeid, 3, frompos)
end