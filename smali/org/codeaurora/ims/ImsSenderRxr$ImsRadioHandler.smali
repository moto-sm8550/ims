.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;
.super Landroid/os/Handler;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 726
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 730
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "WAKE_LOCK_TIMEOUT  mRequestList="

    const-string v1, "Number of messages still waiting for response "

    .line 736
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/IFRequest;

    .line 738
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 777
    :cond_0
    const-string p1, "EVENT_QTI_RADIO_CONFIG_SERVICE_UP received"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v0, 0xf

    .line 779
    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fputmIsAidlReorderingSupported(Lorg/codeaurora/ims/ImsSenderRxr;Z)V

    .line 780
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fputmIsCrbtSupported(Lorg/codeaurora/ims/ImsSenderRxr;Z)V

    .line 781
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 p1, 0x13

    .line 782
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result p1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fputmIsSimultaneousCallingSupported(Lorg/codeaurora/ims/ImsSenderRxr;Z)V

    return-void

    .line 751
    :cond_1
    iget-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 752
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 754
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-eqz v2, :cond_3

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at TIMEOUT. Reset to 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    iput v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 760
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 761
    :try_start_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge v2, v3, :cond_2

    .line 766
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/IFRequest;

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 768
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 772
    :cond_3
    :goto_1
    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 774
    :cond_4
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
