.class public Lorg/codeaurora/ims/ImsRadioUtils;
.super Ljava/lang/Object;
.source "ImsRadioUtils.java"


# static fields
.field private static final INVALID_CONNID:I = 0x0

.field private static TAG:Ljava/lang/String; = "ImsRadioUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FacilityTypeFromHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/16 p0, 0xc

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/16 p0, 0xa

    return p0

    :pswitch_4
    const/16 p0, 0x9

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    .locals 3

    .line 2442
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 2444
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 2445
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regFailureReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 2449
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2450
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    :cond_1
    return-object v0
.end method

.method public static blockReasonTypeFromHal(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2411
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 2413
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2414
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 2417
    :cond_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->hasBlockReasonDetails:Z

    if-eqz v1, :cond_2

    .line 2418
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    :cond_2
    return-object v0
.end method

.method public static buildCFStatusResponseFromHal(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;)[",
            "Lorg/codeaurora/ims/ImsCallForwardTimerInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 1383
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1384
    new-array v2, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    :goto_0
    if-ge v0, v1, :cond_9

    .line 1387
    new-instance v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v3, v2, v0

    .line 1388
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 1390
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 1391
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1394
    :cond_0
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v4, v5, :cond_1

    .line 1395
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1398
    :cond_1
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v4, v5, :cond_2

    .line 1399
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1402
    :cond_2
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    if-eq v4, v5, :cond_3

    .line 1403
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    .line 1406
    :cond_3
    aget-object v4, v2, v0

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1408
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    if-eq v4, v5, :cond_4

    .line 1409
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    .line 1412
    :cond_4
    iget-boolean v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    if-eqz v4, :cond_8

    .line 1413
    const-string v4, "responseQueryCallForward for Timer"

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1415
    iget-object v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1416
    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v6, v5, :cond_5

    .line 1417
    aget-object v6, v2, v0

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1420
    :cond_5
    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v6, v5, :cond_6

    .line 1421
    aget-object v6, v2, v0

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v4, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1424
    :cond_6
    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1426
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v4, v5, :cond_7

    .line 1427
    aget-object v4, v2, v0

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1430
    :cond_7
    iget v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v4, v5, :cond_8

    .line 1431
    aget-object v4, v2, v0

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v3, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v2

    .line 1436
    :cond_a
    new-array p0, v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1437
    const-string v0, "inCfInfoList is null."

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    return-object p0
.end method

.method public static buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .locals 1

    .line 1315
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1317
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    .line 1318
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 1319
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    .line 1320
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    if-eqz p2, :cond_0

    .line 1322
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    .line 1324
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 1325
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 1326
    iput p4, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    return-object v0
.end method

.method public static buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V
    .locals 1

    const v0, 0x7fffffff

    .line 1369
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->year:I

    .line 1370
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->month:I

    .line 1371
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->day:I

    .line 1372
    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    .line 1373
    iput p2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    .line 1374
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->second:I

    .line 1375
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->timezone:I

    return-void
.end method

.method public static buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    .locals 2

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buildCallModifyInfo callModify= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1688
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1689
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    .line 1691
    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1692
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    .line 1693
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object p0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {v1, p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    :cond_0
    const/16 p0, 0xd

    .line 1697
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    return-object v0
.end method

.method public static buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .locals 3

    .line 2148
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 2151
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    :cond_0
    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 2155
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 2156
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;-><init>()V

    const/4 v2, 0x2

    .line 2157
    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    .line 2158
    aget-object v2, p0, p1

    if-eqz v2, :cond_1

    .line 2159
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    .line 2161
    :cond_1
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    .locals 1

    .line 1757
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1759
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    const/4 p0, 0x1

    .line 1760
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    .line 1761
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    .line 1762
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    if-eqz p3, :cond_0

    .line 1764
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 1766
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    return-object v0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .locals 1

    const/4 v0, 0x0

    .line 886
    invoke-static {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .locals 2

    .line 899
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    if-eqz p0, :cond_0

    .line 902
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    .line 904
    :cond_0
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    .line 906
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->getIpPresentation(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    const/4 p0, 0x1

    if-eqz p2, :cond_3

    .line 909
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    if-eqz p4, :cond_1

    .line 911
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result p1

    if-eqz p1, :cond_1

    .line 912
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "RetryCallFailReason="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallFailCauseForImsReason(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 912
    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 916
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result p1

    if-eqz p1, :cond_2

    .line 917
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "RetryCallFailRadioTech="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result p4

    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-virtual {p2, p1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 920
    :cond_2
    iget-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 923
    :cond_3
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 925
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    .line 926
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    :cond_4
    if-eqz p2, :cond_5

    .line 928
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 930
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    .line 931
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    .line 934
    :cond_6
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    .line 935
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    if-eqz p2, :cond_7

    .line 938
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    .line 939
    :goto_1
    iget-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    return-object v0
.end method

.method public static buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 8

    .line 177
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 178
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->createVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 179
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->state:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 180
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 183
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 184
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 187
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 188
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 191
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsMpty:Z

    if-eqz v1, :cond_3

    .line 192
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 195
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsMT:Z

    if-eqz v1, :cond_4

    .line 196
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 199
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->als:I

    if-eq v1, v2, :cond_5

    .line 200
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 203
    :cond_5
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVoice:Z

    if-eqz v1, :cond_6

    .line 204
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 207
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVoicePrivacy:Z

    if-eqz v1, :cond_7

    .line 208
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 211
    :cond_7
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 213
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 214
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 217
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsEncrypted:Z

    if-eqz v1, :cond_8

    .line 218
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 221
    :cond_8
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->tirMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->isTirOverwriteAllowed(I)Z

    move-result v1

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 223
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/ImsRadioUtils;->crsDataFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CrsData;Lorg/codeaurora/ims/CrsData;)V

    .line 224
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isPreparatory:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 226
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->diversionInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 229
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVideoConfSupported:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 231
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVideoConfSupported:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    goto :goto_0

    :cond_9
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 233
    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 236
    :cond_a
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasCallDetails:Z

    if-eqz v1, :cond_b

    .line 237
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 240
    :cond_b
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 241
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v4, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    iget-object v4, v0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v1, v4}, Lorg/codeaurora/ims/ImsRadioUtils;->callProgressInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V

    .line 248
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasFailCause:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    .line 251
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v1, :cond_c

    .line 252
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    goto :goto_1

    :cond_c
    move-object v1, v4

    .line 255
    :goto_1
    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget v5, v5, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    const/16 v6, 0x225

    if-eq v5, v6, :cond_f

    .line 258
    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->getImsReasonForCallFailCause(I)I

    move-result v6

    .line 259
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v7, v7, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v7, v7, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    if-eq v7, v2, :cond_d

    .line 261
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    goto :goto_2

    .line 263
    :cond_d
    const-string v2, "CallFailCauseResponse has no int error code!"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 266
    :goto_2
    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->mapSipErrorFromCallFailCause(I)I

    move-result v2

    iput v2, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    if-eqz v1, :cond_e

    move-object v4, v1

    :cond_e
    move v1, v3

    move v3, v6

    goto :goto_3

    .line 273
    :cond_f
    const-string v1, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    :cond_10
    move v1, v3

    .line 277
    :goto_3
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v3, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 281
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    iput-object p0, v0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    return-object v0
.end method

.method public static buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    .locals 1

    .line 2297
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2298
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->callId:I

    .line 2299
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ectTypeToHal(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->ectType:I

    if-eqz p2, :cond_0

    .line 2301
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    :cond_0
    if-lez p3, :cond_1

    .line 2304
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    return-object v0

    :cond_1
    const p0, 0x7fffffff

    .line 2306
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    return-object v0
.end method

.method public static buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    .locals 2

    .line 992
    new-instance p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {p2}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    const v0, 0x7fffffff

    if-eqz p0, :cond_0

    .line 999
    iput p0, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 1001
    :cond_0
    iput v0, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    :goto_0
    if-eqz p1, :cond_1

    .line 1005
    iput-object p1, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    :cond_1
    const/4 p0, 0x1

    .line 1007
    iput-boolean p0, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    .line 1008
    iput-boolean p3, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    .line 1009
    iput v0, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    if-eq p4, v0, :cond_4

    .line 1011
    iput-boolean p0, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    const/4 p0, 0x0

    if-eqz p5, :cond_2

    .line 1012
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1013
    sget-object p1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "hangupWithReason errorInfo = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p3, p1

    move p5, p0

    :goto_1
    if-ge p5, p3, :cond_2

    aget-byte v0, p1, p5

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1015
    iget-object v1, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 1018
    :cond_2
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallFailCauseForImsReason(I)I

    move-result p1

    .line 1019
    iget-object p3, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iput p1, p3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 1020
    sget-object p3, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "hangupWithReason callFailCause="

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x1fd

    if-ne p1, p3, :cond_3

    .line 1024
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p3, p1

    move p5, p0

    :goto_2
    if-ge p5, p3, :cond_3

    aget-byte v0, p1, p5

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1025
    iget-object v1, p2, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 1028
    :cond_3
    sget-object p0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object p2
.end method

.method public static buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    .locals 1

    .line 1333
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1335
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->messageRef:I

    .line 1336
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->format:Ljava/lang/String;

    .line 1337
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->shallRetry:Z

    if-nez p2, :cond_0

    .line 1338
    const-string p2, ""

    :cond_0
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->smsc:Ljava/lang/String;

    .line 1339
    array-length p0, p4

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget-byte p2, p4, p1

    .line 1340
    iget-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->pdu:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    .locals 3

    .line 287
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildServiceStatusInfo srvType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;-><init>()V

    .line 290
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result p1

    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    .line 291
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeToHal(I)I

    move-result p1

    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    .line 292
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    .line 295
    new-instance p1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {p1}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    const/4 p2, 0x1

    .line 296
    iput-boolean p2, p1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    .line 297
    iput-boolean p2, p1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    .line 298
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result p0

    iput p0, p1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    .line 299
    iget-object p0, p1, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static buildServiceStatusInfoList(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/CapabilityStatus;

    .line 308
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildServiceStatusInfoList capabilityStatus = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapCapabilityToSrvType(I)I

    move-result v2

    .line 311
    invoke-virtual {v1}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHidlRadioTech(I)I

    move-result v3

    .line 312
    invoke-virtual {v1}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapValueToServiceStatus(I)I

    move-result v1

    .line 309
    invoke-static {v2, v3, v1, p1}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V
    .locals 3

    .line 125
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 126
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 128
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 130
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 132
    :goto_1
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    if-ge v1, v0, :cond_1

    .line 133
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static callDomainFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0xb

    return p0
.end method

.method public static callDomainToHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private static callModifyFailCauseFromHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x21

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    :pswitch_3
    const/16 p0, 0x1e

    return p0

    :pswitch_4
    const/16 p0, 0x1d

    return p0

    :pswitch_5
    const/16 p0, 0x1c

    return p0

    :pswitch_6
    const/16 p0, 0x1b

    return p0

    :pswitch_7
    const/16 p0, 0x10

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callModifyFromHal(Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;
    .locals 3

    .line 1704
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1706
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->hasCallDetails:Z

    if-eqz v1, :cond_0

    .line 1707
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1710
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1711
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    :cond_1
    const/4 v1, 0x0

    .line 1714
    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1715
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->failCause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 1716
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->failCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFailCauseFromHal(I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/CallModify;->error:I

    :cond_2
    return-object v0
.end method

.method public static callProgressInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V
    .locals 2

    .line 2569
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callProgressInfoTypeFromHal(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setType(I)V

    .line 2571
    iget-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonCode:S

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    .line 2572
    iget-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonCode:S

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonCode(I)V

    .line 2575
    :cond_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2576
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static callProgressInfoTypeFromHal(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1300
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1297
    :cond_0
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1295
    :cond_1
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1293
    :cond_2
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1291
    :cond_3
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1289
    :cond_4
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0

    .line 1287
    :cond_5
    sget-object p0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object p0
.end method

.method public static callTypeFromHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_4
    const/16 p0, 0x17

    return p0

    :pswitch_5
    const/16 p0, 0x16

    return p0

    :pswitch_6
    const/16 p0, 0x15

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_8
    const/4 p0, 0x3

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_a
    const/4 p0, 0x1

    return p0

    :pswitch_b
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static callTypeToHal(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x9

    return p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    return v0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clipStatusFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static conferenceCallStateFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static configFailureCauseFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static configFailureCauseToHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1777
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1779
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1781
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1782
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1785
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1786
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1789
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1791
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 1792
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x51

    return p0

    :pswitch_2
    const/16 p0, 0x48

    return p0

    :pswitch_3
    const/16 p0, 0x47

    return p0

    :pswitch_4
    const/16 p0, 0x45

    return p0

    :pswitch_5
    const/16 p0, 0x44

    return p0

    :pswitch_6
    const/16 p0, 0x43

    return p0

    :pswitch_7
    const/16 p0, 0x42

    return p0

    :pswitch_8
    const/16 p0, 0x41

    return p0

    :pswitch_9
    const/16 p0, 0x40

    return p0

    :pswitch_a
    const/16 p0, 0x3f

    return p0

    :pswitch_b
    const/16 p0, 0x3e

    return p0

    :pswitch_c
    const/16 p0, 0x3d

    return p0

    :pswitch_d
    const/16 p0, 0x3c

    return p0

    :pswitch_e
    const/16 p0, 0x3b

    return p0

    :pswitch_f
    const/16 p0, 0x3a

    return p0

    :pswitch_10
    const/16 p0, 0x39

    return p0

    :pswitch_11
    const/16 p0, 0x38

    return p0

    :pswitch_12
    const/16 p0, 0x37

    return p0

    :pswitch_13
    const/16 p0, 0x36

    return p0

    :pswitch_14
    const/16 p0, 0x35

    return p0

    :pswitch_15
    const/16 p0, 0x34

    return p0

    :pswitch_16
    const/16 p0, 0x33

    return p0

    :pswitch_17
    const/16 p0, 0x32

    return p0

    :pswitch_18
    const/16 p0, 0x31

    return p0

    :pswitch_19
    const/16 p0, 0x30

    return p0

    :pswitch_1a
    const/16 p0, 0x2f

    return p0

    :pswitch_1b
    const/16 p0, 0x2e

    return p0

    :pswitch_1c
    const/16 p0, 0x2d

    return p0

    :pswitch_1d
    const/16 p0, 0x2c

    return p0

    :pswitch_1e
    const/16 p0, 0x2b

    return p0

    :pswitch_1f
    const/16 p0, 0x2a

    return p0

    :pswitch_20
    const/16 p0, 0x29

    return p0

    :pswitch_21
    const/16 p0, 0x28

    return p0

    :pswitch_22
    const/16 p0, 0x27

    return p0

    :pswitch_23
    const/16 p0, 0x26

    return p0

    :pswitch_24
    const/16 p0, 0x25

    return p0

    :pswitch_25
    const/16 p0, 0x24

    return p0

    :pswitch_26
    const/16 p0, 0x23

    return p0

    :pswitch_27
    const/16 p0, 0x22

    return p0

    :pswitch_28
    const/16 p0, 0x21

    return p0

    :pswitch_29
    const/16 p0, 0x20

    return p0

    :pswitch_2a
    const/16 p0, 0x1f

    return p0

    :pswitch_2b
    const/16 p0, 0x1e

    return p0

    :pswitch_2c
    const/16 p0, 0x1d

    return p0

    :pswitch_2d
    const/16 p0, 0x1c

    return p0

    :pswitch_2e
    const/16 p0, 0x1b

    return p0

    :pswitch_2f
    const/16 p0, 0x1a

    return p0

    :pswitch_30
    const/16 p0, 0x19

    return p0

    :pswitch_31
    const/16 p0, 0x18

    return p0

    :pswitch_32
    const/16 p0, 0x17

    return p0

    :pswitch_33
    const/16 p0, 0x16

    return p0

    :pswitch_34
    const/16 p0, 0x15

    return p0

    :pswitch_35
    const/16 p0, 0x14

    return p0

    :pswitch_36
    const/16 p0, 0x13

    return p0

    :pswitch_37
    const/16 p0, 0x12

    return p0

    :pswitch_38
    const/16 p0, 0x11

    return p0

    :pswitch_39
    const/16 p0, 0x10

    return p0

    :pswitch_3a
    const/16 p0, 0xf

    return p0

    :pswitch_3b
    const/16 p0, 0xe

    return p0

    :pswitch_3c
    const/16 p0, 0xd

    return p0

    :pswitch_3d
    const/16 p0, 0xc

    return p0

    :pswitch_3e
    const/16 p0, 0xb

    return p0

    :pswitch_3f
    const/16 p0, 0xa

    return p0

    :pswitch_40
    const/16 p0, 0x9

    return p0

    :pswitch_41
    const/16 p0, 0x8

    return p0

    :pswitch_42
    const/4 p0, 0x7

    return p0

    :pswitch_43
    const/4 p0, 0x6

    return p0

    :pswitch_44
    const/4 p0, 0x5

    return p0

    :pswitch_45
    const/4 p0, 0x4

    return p0

    :pswitch_46
    const/4 p0, 0x3

    return p0

    :pswitch_47
    const/4 p0, 0x2

    return p0

    :pswitch_48
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static configInfoItemToHal(I)I
    .locals 1

    const/16 v0, 0x51

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x4a

    return p0

    :pswitch_0
    const/16 p0, 0x48

    return p0

    :pswitch_1
    const/16 p0, 0x47

    return p0

    :pswitch_2
    const/16 p0, 0x46

    return p0

    :pswitch_3
    const/16 p0, 0x45

    return p0

    :pswitch_4
    const/16 p0, 0x44

    return p0

    :pswitch_5
    const/16 p0, 0x43

    return p0

    :pswitch_6
    const/16 p0, 0x42

    return p0

    :pswitch_7
    const/16 p0, 0x41

    return p0

    :pswitch_8
    const/16 p0, 0x40

    return p0

    :pswitch_9
    const/16 p0, 0x3f

    return p0

    :pswitch_a
    const/16 p0, 0x3e

    return p0

    :pswitch_b
    const/16 p0, 0x3d

    return p0

    :pswitch_c
    const/16 p0, 0x3c

    return p0

    :pswitch_d
    const/16 p0, 0x3b

    return p0

    :pswitch_e
    const/16 p0, 0x3a

    return p0

    :pswitch_f
    const/16 p0, 0x39

    return p0

    :pswitch_10
    const/16 p0, 0x38

    return p0

    :pswitch_11
    const/16 p0, 0x37

    return p0

    :pswitch_12
    const/16 p0, 0x36

    return p0

    :pswitch_13
    const/16 p0, 0x35

    return p0

    :pswitch_14
    const/16 p0, 0x34

    return p0

    :pswitch_15
    const/16 p0, 0x33

    return p0

    :pswitch_16
    const/16 p0, 0x32

    return p0

    :pswitch_17
    const/16 p0, 0x31

    return p0

    :pswitch_18
    const/16 p0, 0x30

    return p0

    :pswitch_19
    const/16 p0, 0x2f

    return p0

    :pswitch_1a
    const/16 p0, 0x2e

    return p0

    :pswitch_1b
    const/16 p0, 0x2d

    return p0

    :pswitch_1c
    const/16 p0, 0x2c

    return p0

    :pswitch_1d
    const/16 p0, 0x2b

    return p0

    :pswitch_1e
    const/16 p0, 0x2a

    return p0

    :pswitch_1f
    const/16 p0, 0x29

    return p0

    :pswitch_20
    const/16 p0, 0x28

    return p0

    :pswitch_21
    const/16 p0, 0x27

    return p0

    :pswitch_22
    const/16 p0, 0x26

    return p0

    :pswitch_23
    const/16 p0, 0x25

    return p0

    :pswitch_24
    const/16 p0, 0x24

    return p0

    :pswitch_25
    const/16 p0, 0x23

    return p0

    :pswitch_26
    const/16 p0, 0x22

    return p0

    :pswitch_27
    const/16 p0, 0x21

    return p0

    :pswitch_28
    const/16 p0, 0x20

    return p0

    :pswitch_29
    const/16 p0, 0x1f

    return p0

    :pswitch_2a
    const/16 p0, 0x1e

    return p0

    :pswitch_2b
    const/16 p0, 0x1d

    return p0

    :pswitch_2c
    const/16 p0, 0x1c

    return p0

    :pswitch_2d
    const/16 p0, 0x1b

    return p0

    :pswitch_2e
    const/16 p0, 0x1a

    return p0

    :pswitch_2f
    const/16 p0, 0x19

    return p0

    :pswitch_30
    const/16 p0, 0x18

    return p0

    :pswitch_31
    const/16 p0, 0x17

    return p0

    :pswitch_32
    const/16 p0, 0x16

    return p0

    :pswitch_33
    const/16 p0, 0x15

    return p0

    :pswitch_34
    const/16 p0, 0x14

    return p0

    :pswitch_35
    const/16 p0, 0x13

    return p0

    :pswitch_36
    const/16 p0, 0x12

    return p0

    :pswitch_37
    const/16 p0, 0x11

    return p0

    :pswitch_38
    const/16 p0, 0x10

    return p0

    :pswitch_39
    const/16 p0, 0xf

    return p0

    :pswitch_3a
    const/16 p0, 0xe

    return p0

    :pswitch_3b
    const/16 p0, 0xd

    return p0

    :pswitch_3c
    const/16 p0, 0xc

    return p0

    :pswitch_3d
    const/16 p0, 0xb

    return p0

    :pswitch_3e
    const/16 p0, 0xa

    return p0

    :pswitch_3f
    const/16 p0, 0x9

    return p0

    :pswitch_40
    const/16 p0, 0x8

    return p0

    :pswitch_41
    const/4 p0, 0x7

    return p0

    :pswitch_42
    const/4 p0, 0x6

    return p0

    :pswitch_43
    const/4 p0, 0x5

    return p0

    :pswitch_44
    const/4 p0, 0x4

    return p0

    :pswitch_45
    const/4 p0, 0x3

    return p0

    :pswitch_46
    const/4 p0, 0x2

    return p0

    :pswitch_47
    const/4 p0, 0x1

    return p0

    :pswitch_48
    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x49

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)[",
            "Lorg/codeaurora/ims/ServiceStatus;"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 569
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Num of SrvUpdates = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 571
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    .line 573
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    if-eqz v4, :cond_6

    .line 575
    new-instance v5, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v5}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v5, v1, v3

    .line 576
    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    if-eqz v5, :cond_0

    .line 577
    aget-object v5, v1, v3

    iget-boolean v6, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    iput-boolean v6, v5, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 579
    :cond_0
    aget-object v5, v1, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->callTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 580
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const v6, 0x7fffffff

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-lez v5, :cond_1

    .line 581
    aget-object v5, v1, v3

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v9

    iput-object v9, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_1

    .line 583
    :cond_1
    aget-object v5, v1, v3

    new-array v9, v8, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v9, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 584
    aget-object v5, v1, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v9, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v9}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v9, v5, v2

    .line 585
    aget-object v5, v1, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v5, v5, v2

    const/16 v9, 0xe

    .line 586
    iput v9, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 588
    iget v9, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    if-eq v9, v7, :cond_2

    .line 589
    iget v9, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    invoke-static {v9}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v9

    iput v9, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 591
    :cond_2
    iget v9, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    if-eq v9, v6, :cond_3

    .line 592
    iget v9, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    iput v9, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 595
    :cond_3
    :goto_1
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    if-eq v5, v6, :cond_4

    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    if-eqz v5, :cond_4

    .line 598
    const-string v5, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 599
    aget-object v5, v1, v3

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 601
    :cond_4
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    if-eq v5, v7, :cond_5

    .line 602
    aget-object v5, v1, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 606
    :cond_5
    :goto_2
    aget-object v5, v1, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 607
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RTT: copySrvStatusList rtt mode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 608
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 610
    aget-object v6, v1, v3

    new-array v7, v5, [B

    iput-object v7, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_7

    .line 612
    aget-object v7, v1, v3

    iget-object v7, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 616
    :cond_6
    const-string v4, "Null service status in list"

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v1

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static crsDataFromHal(Lvendor/qti/hardware/radio/ims/V1_7/CrsData;Lorg/codeaurora/ims/CrsData;)V
    .locals 1

    .line 2546
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->crsTypeFromHal(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 2547
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;->originalCallType:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    return-void
.end method

.method public static crsTypeFromHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static ectTypeToHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static extraTypeFromHal(I)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static facilityTypeToHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xc

    return p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 p0, 0xa

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_6
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_8
    const/4 p0, 0x3

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_a
    const/4 p0, 0x1

    return p0

    :pswitch_b
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;
    .locals 2

    .line 3130
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;-><init>()V

    .line 3132
    invoke-virtual {p0}, Lorg/codeaurora/ims/Coordinate2D;->getX()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;->x:I

    .line 3133
    invoke-virtual {p0}, Lorg/codeaurora/ims/Coordinate2D;->getY()I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;->y:I

    return-object v0
.end method

.method public static fromVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3087
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;-><init>()V

    .line 3089
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo()Lorg/codeaurora/ims/VosMoveInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3090
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosMoveInfo:Z

    .line 3091
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosMoveInfo()Lorg/codeaurora/ims/VosMoveInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromVosMoveInfo(Lorg/codeaurora/ims/VosMoveInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosMoveInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    .line 3094
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosTouchInfo()Lorg/codeaurora/ims/VosTouchInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3095
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->hasVosTouchInfo:Z

    .line 3096
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosActionInfo;->getVosTouchInfo()Lorg/codeaurora/ims/VosTouchInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->fromVosTouchInfo(Lorg/codeaurora/ims/VosTouchInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->vosTouchInfo:Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    :cond_2
    return-object v0
.end method

.method private static fromVosMoveInfo(Lorg/codeaurora/ims/VosMoveInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;
    .locals 2

    .line 3104
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;-><init>()V

    .line 3106
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getStart()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3107
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getStart()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;->start:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    .line 3109
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getEnd()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3110
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosMoveInfo;->getEnd()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosMoveInfo;->end:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    :cond_1
    return-object v0
.end method

.method private static fromVosTouchInfo(Lorg/codeaurora/ims/VosTouchInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;
    .locals 2

    .line 3118
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;-><init>()V

    .line 3120
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouch()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3121
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouch()Lorg/codeaurora/ims/Coordinate2D;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->fromCoordinate2D(Lorg/codeaurora/ims/Coordinate2D;)Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    .line 3123
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VosTouchInfo;->getTouchDuration()I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    return-object v0
.end method

.method public static geolocationIndicationFromHal(DD)Lorg/codeaurora/ims/GeoLocationInfo;
    .locals 1

    .line 2328
    new-instance v0, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    return-object v0
.end method

.method public static getCallDetails(Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 4

    .line 446
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 448
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 449
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 452
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 453
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 456
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 457
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 461
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_3

    .line 462
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 465
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 466
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 468
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 469
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 471
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 472
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 475
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 476
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 479
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 480
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 483
    :cond_6
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/CallDetails;->setVosSupport(Z)V

    .line 485
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Call Details = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 3

    .line 1034
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imsReason= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1051
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getCallFailCauseForImsReason(I)I

    move-result p0

    return p0

    :pswitch_0
    const/16 p0, 0x1f8

    return p0

    :pswitch_1
    const/16 p0, 0x1f7

    return p0

    :pswitch_2
    const/16 p0, 0x1f6

    return p0

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCallForwardReasonFromSsData(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .locals 0

    .line 2789
    new-instance p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    if-nez p4, :cond_0

    .line 2792
    sget-object p1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    const-string p2, "Null Address!"

    invoke-static {p1, p2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 2796
    :cond_0
    invoke-virtual {p4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2798
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    .line 2800
    :cond_1
    invoke-virtual {p4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2802
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    .line 2804
    :cond_2
    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2806
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    .line 2808
    :cond_3
    invoke-virtual {p4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2810
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2812
    :cond_4
    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2814
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2816
    :cond_5
    invoke-virtual {p4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2818
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->street:Ljava/lang/String;

    .line 2820
    :cond_6
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2822
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2824
    :cond_7
    sget-object p1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "address="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ",houseNumber="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getImsReasonForCallFailCause(I)I
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call fail cause= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    const/16 v1, 0x152

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1f7

    const/16 v2, 0x1f9

    if-eq p0, v0, :cond_3

    const/16 v0, 0x226

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_1

    const/16 v0, 0x1fa

    const/16 v2, 0x150

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 440
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->getImsReasonForCallFailCause(I)I

    move-result p0

    return p0

    :pswitch_0
    const/16 p0, 0xfb

    return p0

    :pswitch_1
    const/16 p0, 0xfa

    return p0

    :pswitch_2
    const/16 p0, 0xf9

    return p0

    :pswitch_3
    const/16 p0, 0xf8

    return p0

    :pswitch_4
    const/16 p0, 0xf7

    return p0

    :pswitch_5
    const/16 p0, 0x194

    return p0

    :pswitch_6
    const/16 p0, 0x193

    return p0

    :pswitch_7
    const/16 p0, 0x192

    return p0

    :pswitch_8
    const/16 p0, 0x191

    return p0

    :pswitch_9
    const/16 p0, 0x16a

    return p0

    :pswitch_a
    const/16 p0, 0x169

    return p0

    :pswitch_b
    const/16 p0, 0x162

    return p0

    :pswitch_c
    const/16 p0, 0x161

    return p0

    :pswitch_d
    const/16 p0, 0x160

    return p0

    :pswitch_e
    const/16 p0, 0x164

    return p0

    :pswitch_f
    const/16 p0, 0x163

    return p0

    :pswitch_10
    const/16 p0, 0x15f

    return p0

    :pswitch_11
    const/16 p0, 0x155

    return p0

    :pswitch_12
    const/16 p0, 0x154

    return p0

    :pswitch_13
    const/16 p0, 0x153

    return p0

    :pswitch_14
    return v1

    :pswitch_15
    const/16 p0, 0x151

    return p0

    :pswitch_16
    return v2

    :pswitch_17
    const/16 p0, 0x14f

    return p0

    :pswitch_18
    const/16 p0, 0x14e

    return p0

    :pswitch_19
    const/16 p0, 0x14d

    return p0

    :pswitch_1a
    const/16 p0, 0x14c

    return p0

    :pswitch_1b
    const/16 p0, 0x14b

    return p0

    :pswitch_1c
    const/16 p0, 0x141

    return p0

    :pswitch_1d
    const/16 p0, 0x5e8

    return p0

    :pswitch_1e
    const/16 p0, 0x3f8

    return p0

    :pswitch_1f
    const/16 p0, 0x3f7

    return p0

    :pswitch_20
    const/16 p0, 0x3f6

    return p0

    :pswitch_21
    const/16 p0, 0x95

    return p0

    :pswitch_22
    const/16 p0, 0x16c

    return p0

    :pswitch_23
    const/16 p0, 0x16b

    return p0

    :pswitch_24
    const/16 p0, 0xf6

    return p0

    :pswitch_25
    const/16 p0, 0xf5

    return p0

    :pswitch_26
    const/16 p0, 0xf4

    return p0

    :pswitch_27
    const/16 p0, 0xf3

    return p0

    :pswitch_28
    const/16 p0, 0xf1

    return p0

    :cond_0
    return v2

    :cond_1
    const/16 p0, 0x92

    return p0

    :cond_2
    const/16 p0, 0x5ea

    return p0

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    const/16 p0, 0x1fe

    return p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1fe
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIpPresentation(I)I
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v1, "isConferenceUri"

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 168
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getSmsPdu(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 494
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected static handleSrvStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1224
    const-string p0, "inList is null."

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1228
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object p0

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1240
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1242
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 1243
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1246
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->srcTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 1247
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1250
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->targetTech:I

    if-eq v1, v2, :cond_3

    .line 1251
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1254
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hasHoExtra:Z

    if-eqz v1, :cond_4

    .line 1255
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->extraTypeFromHal(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->extraInfo:Ljava/util/ArrayList;

    .line 1256
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtils;->toByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 1255
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1259
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1260
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method public static handoverTypeFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static imsSmsDeliverStatusToHidl(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 1352
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->imsSmsDeliverStatusToHidl(I)I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static imsSmsResponsefromHidl(III)Lorg/codeaurora/ims/sms/SmsResponse;
    .locals 1

    .line 543
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseResult(I)I

    move-result p1

    .line 544
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseReason(I)I

    move-result p2

    .line 546
    new-instance v0, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(III)V

    return-object v0
.end method

.method public static imsSmsStatusReportStatusToHidl(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2337
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 2338
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2339
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    :cond_1
    const/4 v1, 0x0

    .line 2342
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2343
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 3

    .line 562
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->verstat:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkVerstat(I)I

    move-result v0

    .line 563
    new-instance v1, Lorg/codeaurora/ims/sms/IncomingSms;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lorg/codeaurora/ims/sms/IncomingSms;-><init>(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method public static ipPresentationFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static ipPresentationToHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isTirOverwriteAllowed(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1218
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtils;

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static mapCapabilityToSrvType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 p0, 0x19

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static mapHidlToFrameworkResponseReason(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 537
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapHidlToFrameworkResponseReason(I)I

    move-result p0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapHidlToFrameworkResponseResult(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static mapHidlToFrameworkVerstat(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static mapRadioTechToHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x15

    return p0

    :pswitch_0
    const/16 p0, 0x16

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x12

    return p0

    :pswitch_4
    const/16 p0, 0x11

    return p0

    :pswitch_5
    const/16 p0, 0x10

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0xe

    return p0

    :pswitch_8
    const/16 p0, 0xd

    return p0

    :pswitch_9
    const/16 p0, 0xc

    return p0

    :pswitch_a
    const/16 p0, 0xb

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/16 p0, 0x9

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_f
    const/4 p0, 0x6

    return p0

    :pswitch_10
    const/4 p0, 0x5

    return p0

    :pswitch_11
    const/4 p0, 0x4

    return p0

    :pswitch_12
    const/4 p0, 0x3

    return p0

    :pswitch_13
    const/4 p0, 0x2

    return p0

    :pswitch_14
    const/4 p0, 0x1

    return p0

    :pswitch_15
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapRadioTechToHidlRadioTech(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x13

    return p0

    :cond_1
    const/16 p0, 0xe

    return p0
.end method

.method public static mapSipErrorFromCallFailCause(I)I
    .locals 1

    const/16 v0, 0x204

    if-eq p0, v0, :cond_2

    const/16 v0, 0x207

    if-eq p0, v0, :cond_1

    const/16 v0, 0x208

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x244

    return p0

    :pswitch_1
    const/16 p0, 0x201

    return p0

    :pswitch_2
    const/16 p0, 0x1f9

    return p0

    :pswitch_3
    const/16 p0, 0x1f7

    return p0

    :pswitch_4
    const/16 p0, 0x1f6

    return p0

    :pswitch_5
    const/16 p0, 0x1f5

    return p0

    :pswitch_6
    const/16 p0, 0x1f4

    return p0

    :cond_0
    const/16 p0, 0x1e0

    return p0

    :cond_1
    const/16 p0, 0x198

    return p0

    :cond_2
    const/16 p0, 0x193

    return p0

    :pswitch_data_0
    .packed-switch 0x20e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x213
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapValueToServiceStatus(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private static messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2263
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 2265
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2266
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 2269
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2270
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 2273
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2274
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 2277
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2278
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 2281
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 2282
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messagePriorityFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 2285
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2286
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 2289
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    .line 2290
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    :cond_7
    return-object v0
.end method

.method public static messagePriorityFromHal(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2234
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 2236
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 2237
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 2240
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2241
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 2244
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 2245
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 2248
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 2249
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 2252
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 2253
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    iput p0, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    :cond_5
    return-object v0
.end method

.method public static messageTypeFromHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static messageWaitingIndicationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2208
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 2209
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageWaitingIndicationFromHal summaryCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    .line 2210
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2209
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    if-eqz v2, :cond_1

    .line 2213
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2216
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2217
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 2219
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageWaitingIndicationFromHal detailsCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    .line 2220
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2219
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    if-eqz v1, :cond_4

    .line 2223
    iget-object v2, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static migrateAccTechStatusFromV16(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    .locals 2

    .line 2993
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;-><init>()V

    .line 2995
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateRadioTechTypeFromV16(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    .line 2996
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    .line 2997
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    .line 2998
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    .line 2999
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    move-result-object p0

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    return-object v0
.end method

.method public static migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    .locals 2

    .line 2830
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    .line 2831
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->city:Ljava/lang/String;

    .line 2832
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->state:Ljava/lang/String;

    .line 2833
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->country:Ljava/lang/String;

    .line 2834
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2835
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method private static migrateCallFailCauseToV11(I)I
    .locals 1

    const/16 v0, 0x225

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method private static migrateCallFailCausefromV13(I)I
    .locals 1

    .line 2936
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->isFailCauseIntroducedInV13(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x224

    :cond_0
    return p0
.end method

.method private static migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    .locals 5

    .line 2701
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;-><init>()V

    .line 2704
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    .line 2705
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    .line 2706
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    .line 2707
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMpty:Z

    .line 2708
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMpty:Z

    .line 2709
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMT:Z

    .line 2710
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMT:Z

    .line 2711
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    .line 2712
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoice:Z

    .line 2713
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoice:Z

    .line 2714
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoicePrivacy:Z

    .line 2715
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoicePrivacy:Z

    .line 2716
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->number:Ljava/lang/String;

    .line 2717
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->numberPresentation:I

    .line 2718
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->name:Ljava/lang/String;

    .line 2719
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->namePresentation:I

    .line 2721
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasCallDetails:Z

    .line 2722
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 2723
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 2724
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    const/4 v1, 0x0

    move v2, v1

    .line 2726
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2727
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2730
    :goto_1
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2731
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2734
    :goto_2
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2735
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2738
    :cond_2
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 2739
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 2740
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 2741
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 2742
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 2744
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasFailCause:Z

    .line 2745
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2746
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCauseToV11(I)I

    move-result v3

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->failCause:I

    .line 2748
    :goto_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2749
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2752
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2753
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2754
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2755
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2758
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsEncrypted:Z

    .line 2759
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isEncrypted:Z

    .line 2760
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsCalledPartyRinging:Z

    .line 2761
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isCalledPartyRinging:Z

    .line 2762
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->historyInfo:Ljava/lang/String;

    .line 2763
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVideoConfSupported:Z

    .line 2764
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVideoConfSupported:Z

    return-object v0
.end method

.method public static migrateCallListToV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2776
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2779
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2780
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    move-result-object v1

    .line 2781
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static migrateCallModifyInfoToV19(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3144
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;-><init>()V

    .line 3146
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callIndex:I

    .line 3147
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->hasCallDetails:Z

    .line 3148
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 3149
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    move-result-object v1

    .line 3148
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV19;->migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    .line 3150
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->failCause:I

    return-object v0
.end method

.method public static migrateConfigInfoFromV15(Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 2949
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 2951
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->isConfigItemIntroducedInV15(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2954
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    .line 2955
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    .line 2956
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    .line 2957
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    .line 2958
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2959
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 2961
    :cond_0
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    return-object v0

    .line 2952
    :cond_1
    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string v0, "Config item not supported in current HAL"

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    .locals 4

    .line 948
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 950
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->address:Ljava/lang/String;

    .line 951
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->clirMode:I

    .line 952
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->presentation:I

    .line 953
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasCallDetails:Z

    .line 955
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 956
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 957
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 959
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 960
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 964
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 965
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 969
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 970
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 973
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 974
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 975
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 976
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 977
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 979
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsConferenceUri:Z

    .line 980
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isConferenceUri:Z

    .line 981
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsCallPull:Z

    .line 982
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isCallPull:Z

    .line 983
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsEncrypted:Z

    .line 984
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isEncrypted:Z

    return-object v0
.end method

.method public static migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    .locals 4

    .line 2910
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 2911
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connIndex:I

    .line 2912
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasMultiParty:Z

    .line 2913
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->multiParty:Z

    .line 2914
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 2915
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->conf_id:I

    .line 2916
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 2917
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCausefromV13(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2920
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 2921
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2924
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2925
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2926
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2928
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object p0, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    return-object v0
.end method

.method private static migrateRadioTechTypeFromV16(I)I
    .locals 1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    const/16 p0, 0xf

    :cond_0
    return p0
.end method

.method public static migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    .locals 2

    .line 3006
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 3008
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    .line 3009
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    .line 3010
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 3011
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateRadioTechTypeFromV16(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    .line 3012
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    return-object v0
.end method

.method public static migrateServiceStatusInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    .locals 4

    .line 2974
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 2976
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    .line 2977
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    .line 2978
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->type:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->type:I

    .line 2979
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    .line 2980
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    .line 2981
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    .line 2982
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    .line 2983
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    .line 2984
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateAccTechStatusFromV16(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2986
    :cond_0
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    return-object v0
.end method

.method private static notificationTypeFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static operationFromHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static participantStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2367
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 2369
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2370
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 2373
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 2374
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->operationFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 2377
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 2379
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 2380
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 2383
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    if-eqz v1, :cond_4

    .line 2384
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    :cond_4
    return-object v0
.end method

.method public static radioTechFromHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, 0x7fffffff

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x12

    return p0

    :pswitch_4
    const/16 p0, 0x11

    return p0

    :pswitch_5
    const/16 p0, 0x10

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0xe

    return p0

    :pswitch_8
    const/16 p0, 0xd

    return p0

    :pswitch_9
    const/16 p0, 0xc

    return p0

    :pswitch_a
    const/16 p0, 0xb

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/16 p0, 0x9

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x7

    return p0

    :pswitch_f
    const/4 p0, 0x6

    return p0

    :pswitch_10
    const/4 p0, 0x5

    return p0

    :pswitch_11
    const/4 p0, 0x4

    return p0

    :pswitch_12
    const/4 p0, 0x3

    return p0

    :pswitch_13
    const/4 p0, 0x2

    return p0

    :pswitch_14
    const/4 p0, 0x1

    return p0

    :pswitch_15
    const/4 p0, 0x0

    return p0

    :pswitch_16
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static regFailureReasonTypeFromHal(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regStateFromHal(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static regStateToHal(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static registrationBlockStatusFromHal(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .locals 1

    .line 2393
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    if-eqz p0, :cond_0

    .line 2396
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2400
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    :cond_1
    return-object v0
.end method

.method public static registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3

    if-eqz p0, :cond_3

    .line 685
    new-instance v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    .line 686
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 687
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 690
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 691
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 694
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 696
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 697
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 700
    :cond_2
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static requestTypeFromRILRequestType(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static ringbackToneFromHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static rttModeFromHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static rttModeToHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static serviceClassProvisionStatusFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static serviceClassStatusFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static serviceTypeFromRILServiceType(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x16

    return p0

    :pswitch_1
    const/16 p0, 0x15

    return p0

    :pswitch_2
    const/16 p0, 0x14

    return p0

    :pswitch_3
    const/16 p0, 0x13

    return p0

    :pswitch_4
    const/16 p0, 0x12

    return p0

    :pswitch_5
    const/16 p0, 0x11

    return p0

    :pswitch_6
    const/16 p0, 0x10

    return p0

    :pswitch_7
    const/16 p0, 0xf

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_9
    const/16 p0, 0xd

    return p0

    :pswitch_a
    const/16 p0, 0xc

    return p0

    :pswitch_b
    const/16 p0, 0xb

    return p0

    :pswitch_c
    const/16 p0, 0xa

    return p0

    :pswitch_d
    const/16 p0, 0x9

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :pswitch_f
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_11
    const/4 p0, 0x5

    return p0

    :pswitch_12
    const/4 p0, 0x4

    return p0

    :pswitch_13
    const/4 p0, 0x3

    return p0

    :pswitch_14
    const/4 p0, 0x2

    return p0

    :pswitch_15
    const/4 p0, 0x1

    return p0

    :pswitch_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 4

    .line 876
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 877
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 878
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    goto :goto_0

    :cond_0
    move p0, v3

    .line 880
    :goto_0
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, p0, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method public static ssacInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2871
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SsacInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SsacInfo;-><init>()V

    .line 2872
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    if-eqz v1, :cond_1

    .line 2873
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SsacInfo;->setBarringFactorVoice(I)V

    .line 2876
    :cond_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    if-eqz v1, :cond_2

    .line 2877
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SsacInfo;->setBarringTimeVoice(I)V

    .line 2880
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    if-eqz v1, :cond_3

    .line 2881
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SsacInfo;->setBarringFactorVideo(I)V

    .line 2884
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    if-eqz v1, :cond_4

    .line 2885
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SsacInfo;->setBarringTimeVideo(I)V

    .line 2888
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    if-eqz v1, :cond_5

    .line 2889
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SsacInfo;->setBarringFactorVoiceSib(I)V

    .line 2892
    :cond_5
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    if-eqz v1, :cond_6

    .line 2893
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SsacInfo;->setBarringTimeVoiceSib(I)V

    .line 2896
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    if-eqz v1, :cond_7

    .line 2897
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SsacInfo;->setBarringFactorVideoSib(I)V

    .line 2900
    :cond_7
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    if-eqz v1, :cond_8

    .line 2901
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/SsacInfo;->setBarringTimeVideoSib(I)V

    :cond_8
    return-object v0
.end method

.method public static statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 3

    if-eqz p0, :cond_5

    .line 654
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    .line 655
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 656
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 659
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 660
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 663
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 664
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 667
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 668
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 670
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result p0

    iput p0, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    return-object v0

    :cond_3
    const/4 p0, 0x2

    .line 672
    iput p0, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 673
    const-class p0, Lorg/codeaurora/ims/ImsRadioUtils;

    const-string v1, "Registered not sent"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 3

    .line 500
    new-instance v0, Lorg/codeaurora/ims/sms/StatusReport;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->messageRef:I

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->format:Ljava/lang/String;

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->pdu:Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/sms/StatusReport;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method public static statusTypeFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static statusTypeToHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static suppServiceNotificationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1471
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 1473
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1474
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->notificationTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 1478
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1479
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 1482
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 1483
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 1486
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 1487
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 1490
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 1491
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 1494
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 1495
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 1497
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 1498
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    :cond_6
    return-object v0
.end method

.method public static suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;
    .locals 7

    .line 1580
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 1582
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 1584
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    .line 1585
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v1

    .line 1584
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setProvisionStatus(I)V

    .line 1587
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1588
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->FacilityTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 1591
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 1592
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1593
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 1596
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    .line 1597
    iget v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 1600
    :cond_2
    new-instance v3, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    invoke-direct {v3, v4}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 1603
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1604
    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    .line 1605
    new-instance v5, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 1608
    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    goto :goto_1

    .line 1611
    :cond_3
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    goto :goto_0

    .line 1614
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 1615
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_5
    return-object v0
.end method

.method public static teleserviceTypeFromRILTeleserviceType(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static ttyModeFromHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static ttyModeToHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 5

    .line 632
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 634
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 638
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 639
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " networkMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restrictCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " registered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static ussdInfoFromHal(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;
    .locals 2

    .line 2504
    new-instance v0, Lorg/codeaurora/ims/UssdInfo;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->ussdTypeFromHal(I)I

    move-result p0

    iget v1, p2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iget-object p2, p2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/codeaurora/ims/UssdInfo;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static ussdTypeFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static voWiFiCallQualityFromHal(I)[I
    .locals 3

    const/4 v0, 0x1

    .line 2484
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2496
    aput v2, v1, v2

    return-object v1

    :cond_0
    const/4 p0, 0x4

    .line 2493
    aput p0, v1, v2

    return-object v1

    .line 2490
    :cond_1
    aput v0, v1, v2

    return-object v1

    .line 2487
    :cond_2
    aput v0, v1, v2

    return-object v1
.end method

.method public static voiceInfoTypeFromHal(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static voltePrefFromHal(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    .line 2840
    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    .line 2849
    aput p0, v1, v2

    return-object v1

    .line 2846
    :cond_0
    aput v0, v1, v2

    return-object v1

    .line 2843
    :cond_1
    aput v2, v1, v2

    return-object v1
.end method

.method public static vopsInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2861
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/VopsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/VopsInfo;-><init>()V

    .line 2862
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->isVopsEnabled:Z

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/VopsInfo;->setIsVopsEnabled(Z)V

    return-object v0
.end method
