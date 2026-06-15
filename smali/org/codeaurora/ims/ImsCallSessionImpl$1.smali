.class Lorg/codeaurora/ims/ImsCallSessionImpl$1;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private numberOfAlerts:I

.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3775
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 3776
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 3778
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3790
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    return-void

    .line 3780
    :cond_1
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    :goto_0
    return-void

    .line 3783
    :cond_2
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->removeMessages(I)V

    const-wide/32 v2, 0x1b7740

    .line 3784
    invoke-virtual {p0, v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->sendEmptyMessageDelayed(IJ)Z

    .line 3785
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->-$$Nest$mstartBeepForAlert(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 3786
    iget p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    return-void
.end method
