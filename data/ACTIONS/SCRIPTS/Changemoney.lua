function onUse(cid, item, frompos, item2, topos)
if (item.itemid == 2148) and (item.type == 100) then
doRemoveItem(item.uid,99);
doTransformItem(item.uid,2152);
doSendAnimatedText(frompos,"$$",30);
elseif (item.itemid == 2152) and (item.type == 1) then
doRemoveItem(item.uid,-99);
doTransformItem(item.uid,2148);
doSendAnimatedText(frompos,"$",30);

elseif (item.itemid == 2152) and (item.type == 100) then
doRemoveItem(item.uid,99);
doTransformItem(item.uid,2160);
doSendAnimatedText(frompos,"~$$$~",30);
elseif (item.itemid == 2160) and (item.type == 1) then
doRemoveItem(item.uid,-99);
doTransformItem(item.uid,2152);
doSendAnimatedText(frompos,"$$",30);

elseif (item.itemid == 2160) and (item.type == 100) then
doRemoveItem(item.uid,99);
doTransformItem(item.uid,2157);
doSendAnimatedText(frompos,"~~$$$$~~",30);
elseif (item.itemid == 2157) and (item.type == 1) then
doRemoveItem(item.uid,-99);
doTransformItem(item.uid,2160);
doSendAnimatedText(frompos,"~$$$~",30);
end
return 1;
end