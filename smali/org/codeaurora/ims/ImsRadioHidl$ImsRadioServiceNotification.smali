.class final Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "ImsRadioHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsRadioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsRadioServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsRadioHidl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ims Radio interface service started "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " preexisting ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioHidl;->-$$Nest$fgetmHalSync(Lorg/codeaurora/ims/ImsRadioHidl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 173
    :try_start_0
    iget-object p2, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioHidl;->-$$Nest$fgetmIsDisposed(Lorg/codeaurora/ims/ImsRadioHidl;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 174
    const-string p2, "onRegistration: already disposed. Exit"

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    monitor-exit p1

    return-void

    .line 177
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->-$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioHidl;)V

    return-void

    :catchall_0
    move-exception p0

    .line 177
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
