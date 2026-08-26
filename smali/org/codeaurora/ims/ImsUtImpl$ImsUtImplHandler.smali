.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 819
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 822
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 823
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message received: what = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$misDisposed(Lorg/codeaurora/ims/ImsUtImpl;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 835
    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const-string v4, "SuppSvc "

    const-string v5, "SuppSvcResponse failure with neither ar.result nor userObj"

    const-string v6, "Success callback on Query event= "

    const-string v7, "Error for Query Event= "

    const-string v8, "SuppSvcResponse failure with neither errordetails nor failurecause"

    const-string v9, "Service= "

    const-string v10, "Success callback called for msg.what= "

    const/4 v11, 0x0

    const-string v12, "Invalid message id received in handleMessage."

    const-string v14, "ImsUtImpl"

    const/4 v15, 0x0

    const/16 v13, 0x324

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 1402
    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1403
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1404
    iget-object v1, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ims/ImsSsData;

    .line 1405
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    return-void

    .line 1407
    :cond_1
    const-string v1, "exception in handling UNSOL_ON_SS"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 925
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 927
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_2

    .line 928
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 932
    :cond_2
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 933
    const-string v3, "Update CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 935
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 936
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 938
    const-string v2, "SuppSvcResponse has failure for CB update."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 941
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v13, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 939
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 943
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 944
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 946
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 947
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CB update failed with error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 952
    :cond_4
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 955
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 954
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 958
    :cond_5
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 959
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 958
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 964
    :cond_6
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 838
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 840
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_7

    .line 841
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 845
    :cond_7
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    .line 846
    const-string v3, "Query CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 849
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 850
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 849
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 853
    :cond_8
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_10

    .line 854
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 855
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 857
    const-string v2, "SuppSvcResponse has failure for CB query."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 860
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v13, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 858
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 862
    :cond_9
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 863
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 865
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v13, v15, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CB query failed with error = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 870
    :cond_a
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 871
    const-string v2, "No service status info in response for CB query."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v13, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 877
    :cond_b
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 878
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 880
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v2

    .line 881
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    .line 882
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 884
    invoke-virtual {v5}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->getLines()Ljava/util/List;

    move-result-object v5

    .line 885
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    .line 886
    new-instance v7, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 888
    invoke-virtual {v6}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getStatus()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 890
    invoke-virtual {v6}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 889
    invoke-virtual {v7, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 891
    invoke-virtual {v7}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 895
    :cond_d
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 897
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 896
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 895
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void

    :cond_e
    const/4 v3, 0x1

    .line 899
    new-array v4, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 901
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v2

    if-ne v2, v3, :cond_f

    const/4 v13, 0x1

    goto :goto_1

    :cond_f
    move v13, v15

    .line 904
    :goto_1
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v2, v13}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 906
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 907
    aput-object v2, v4, v15

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "success callback Query Anonymous CB, status= "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 916
    :cond_10
    const-string v2, "Null response received for Query CB!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v13, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1277
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 1279
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_11

    .line 1280
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1283
    :cond_11
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 1284
    const-string v3, "Query COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1287
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1289
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1287
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1292
    :cond_12
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1295
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1296
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1298
    const-string v2, "SuppSvcResponse has failure for COLP query."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1301
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v13, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1299
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1302
    :cond_13
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    .line 1303
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1305
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "COLP query failed with error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1312
    :cond_14
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1313
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1314
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1315
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v4

    .line 1316
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getProvisionStatus()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " provision Status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1317
    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    const-string v2, "Success callback called for Query COLP."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1234
    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1235
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    if-eqz v2, :cond_40

    .line 1237
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_15

    .line 1238
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1241
    :cond_15
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_17

    .line 1242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 1245
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1247
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1250
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    .line 1251
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1247
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1253
    :cond_16
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1255
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1253
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    :cond_17
    if-eqz v3, :cond_40

    .line 1259
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1260
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1261
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v4

    .line 1262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1262
    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getProvisionStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Provision Status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1200
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1201
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    if-eqz v2, :cond_40

    .line 1203
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_18

    .line 1204
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1207
    :cond_18
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1a

    .line 1208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 1210
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1212
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1215
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    .line 1216
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1212
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1218
    :cond_19
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1220
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1218
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    :cond_1a
    if-eqz v3, :cond_40

    .line 1224
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1225
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1228
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 1227
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1334
    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 1336
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_1b

    .line 1337
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1340
    :cond_1b
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 1341
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1c

    .line 1342
    const-string v3, "Update CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1344
    :cond_1c
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1d

    .line 1345
    const-string v3, "Update CLIP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1347
    :cond_1d
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0xa

    if-ne v3, v6, :cond_1e

    .line 1348
    const-string v3, "Update COLR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1350
    :cond_1e
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0xc

    if-ne v3, v6, :cond_1f

    .line 1351
    const-string v3, "Update COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1353
    :cond_1f
    :goto_2
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_22

    .line 1356
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1358
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 1360
    const-string v2, "SuppSvcResponse has failure for CLIP/COLP update"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1362
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1365
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v13, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1362
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1366
    :cond_20
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    .line 1367
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1369
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1375
    :cond_21
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1379
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1377
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1381
    :cond_22
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_23

    .line 1382
    const-string v3, "SuppSvcResponse failure with valid userObj"

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1385
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1383
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1388
    :cond_23
    invoke-static {v14, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1392
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1390
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1395
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1397
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 1165
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 1167
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_25

    .line 1168
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1171
    :cond_25
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_27

    .line 1172
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_26

    .line 1173
    const-string v3, "Query CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    :cond_26
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1177
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1179
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1177
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1182
    :cond_27
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 1183
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    if-eqz v2, :cond_28

    .line 1184
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    .line 1186
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v4, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v3, v2, v15

    .line 1187
    invoke-virtual {v4, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    const/16 v16, 0x1

    aget v2, v2, v16

    .line 1188
    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 1189
    const-string v3, "Calling success callback for Query CLIR."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1193
    :cond_28
    const-string v1, "Received invalid response for Query CLIR."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 970
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 972
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_29

    .line 973
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 976
    :cond_29
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 977
    const-string v3, "Update CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2c

    .line 982
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 984
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SuppSvcResponse has failure for msg.what= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 990
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v13, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 988
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 991
    :cond_2a
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2b

    .line 992
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 995
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v15, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed with error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1001
    :cond_2b
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1004
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1003
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1007
    :cond_2c
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2d

    .line 1008
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1009
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1008
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1012
    :cond_2d
    invoke-static {v14, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1015
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1014
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1019
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 1108
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 1110
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_2f

    .line 1111
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1114
    :cond_2f
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1115
    const-string v3, "Query CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1117
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1119
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1117
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1122
    :cond_30
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_34

    .line 1123
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x1

    .line 1125
    new-array v4, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 1128
    aget v5, v2, v15

    if-ne v5, v3, :cond_31

    .line 1129
    aget v2, v2, v3

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_32

    const/4 v13, 0x1

    goto :goto_3

    :cond_31
    if-nez v5, :cond_33

    :cond_32
    move v13, v15

    .line 1148
    :goto_3
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v2, v13}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1149
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    aput-object v2, v4, v15

    .line 1151
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    return-void

    .line 1139
    :cond_33
    const-string v2, "No service status received for CallWaitingInfo."

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v13, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1156
    :cond_34
    const-string v2, "Null response received for Query CW!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1157
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v13, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1027
    :pswitch_a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_3a

    .line 1028
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_35

    goto/16 :goto_5

    .line 1033
    :cond_35
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_39

    .line 1034
    const-string v3, "Update CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/CallForwardStatusInfo;

    if-eqz v3, :cond_36

    .line 1038
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    goto :goto_4

    :cond_36
    move-object v3, v11

    :goto_4
    if-eqz v3, :cond_37

    .line 1039
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v11

    :cond_37
    if-eqz v11, :cond_38

    .line 1040
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1042
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 1044
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    invoke-direct {v2, v13, v3, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1042
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1046
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Update CF failure: ar = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " sipError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1049
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1048
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1052
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    return-void

    .line 1029
    :cond_3a
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid response: ar = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " msgId = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1058
    :pswitch_b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz v2, :cond_40

    .line 1060
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_3b

    .line 1061
    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1064
    :cond_3b
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3c

    .line 1065
    const-string v3, "Query CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1067
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1068
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1067
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1071
    :cond_3c
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_3f

    .line 1072
    iget-object v2, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1075
    array-length v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3d

    .line 1076
    const-string v2, "CallForwardInfo list has no elements!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1077
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v13, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1083
    :cond_3d
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1084
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsUtImpl;->toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    if-nez v2, :cond_3e

    .line 1087
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v13, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 1094
    :cond_3e
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    return-void

    .line 1099
    :cond_3f
    const-string v2, "Null response received for Query CF!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1100
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v13, v15, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_40
    :goto_6
    return-void

    .line 830
    :cond_41
    :goto_7
    iget-object v0, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$mdumpw(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
