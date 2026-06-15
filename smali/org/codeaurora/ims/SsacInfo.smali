.class public final Lorg/codeaurora/ims/SsacInfo;
.super Ljava/lang/Object;
.source "SsacInfo.java"


# instance fields
.field private mBarringFactorVideo:I

.field private mBarringFactorVideoSib:I

.field private mBarringFactorVoice:I

.field private mBarringFactorVoiceSib:I

.field private mBarringTimeVideo:I

.field private mBarringTimeVideoSib:I

.field private mBarringTimeVoice:I

.field private mBarringTimeVoiceSib:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoice:I

    .line 31
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoice:I

    .line 32
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideo:I

    .line 33
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideo:I

    .line 34
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoiceSib:I

    .line 35
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoiceSib:I

    .line 36
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideoSib:I

    .line 37
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideoSib:I

    return-void
.end method


# virtual methods
.method public getBarringFactorVideo()I
    .locals 0

    .line 78
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideo:I

    return p0
.end method

.method public getBarringFactorVideoSib()I
    .locals 0

    .line 94
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideoSib:I

    return p0
.end method

.method public getBarringFactorVoice()I
    .locals 0

    .line 103
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoice:I

    return p0
.end method

.method public getBarringFactorVoiceSib()I
    .locals 0

    .line 86
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoiceSib:I

    return p0
.end method

.method public getBarringTimeVideo()I
    .locals 0

    .line 82
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideo:I

    return p0
.end method

.method public getBarringTimeVideoSib()I
    .locals 0

    .line 98
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideoSib:I

    return p0
.end method

.method public getBarringTimeVoice()I
    .locals 0

    .line 74
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoice:I

    return p0
.end method

.method public getBarringTimeVoiceSib()I
    .locals 0

    .line 90
    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoiceSib:I

    return p0
.end method

.method public setBarringFactorVideo(I)V
    .locals 0

    .line 50
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideo:I

    return-void
.end method

.method public setBarringFactorVideoSib(I)V
    .locals 0

    .line 66
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideoSib:I

    return-void
.end method

.method public setBarringFactorVoice(I)V
    .locals 0

    .line 42
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideo:I

    return-void
.end method

.method public setBarringFactorVoiceSib(I)V
    .locals 0

    .line 58
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoiceSib:I

    return-void
.end method

.method public setBarringTimeVideo(I)V
    .locals 0

    .line 54
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideo:I

    return-void
.end method

.method public setBarringTimeVideoSib(I)V
    .locals 0

    .line 70
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideoSib:I

    return-void
.end method

.method public setBarringTimeVoice(I)V
    .locals 0

    .line 46
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoice:I

    return-void
.end method

.method public setBarringTimeVoiceSib(I)V
    .locals 0

    .line 62
    iput p1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoiceSib:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SsacInfo barringFactorVoice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVoice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringFactorVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringFactorVoiceSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoiceSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVoiceSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoiceSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringFactorVideoSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideoSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVideoSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideoSib:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
