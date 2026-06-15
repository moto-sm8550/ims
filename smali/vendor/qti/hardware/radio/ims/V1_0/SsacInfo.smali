.class public final Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
.super Ljava/lang/Object;
.source "SsacInfo.java"


# instance fields
.field public barringFactorVideo:I

.field public barringFactorVideoSib:I

.field public barringFactorVoice:I

.field public barringFactorVoiceSib:I

.field public barringTimeVideo:I

.field public barringTimeVideoSib:I

.field public barringTimeVoice:I

.field public barringTimeVoiceSib:I

.field public hasBarringFactorVideo:Z

.field public hasBarringFactorVideoSib:Z

.field public hasBarringFactorVoice:Z

.field public hasBarringFactorVoiceSib:Z

.field public hasBarringTimeVideo:Z

.field public hasBarringTimeVideoSib:Z

.field public hasBarringTimeVoice:Z

.field public hasBarringTimeVoiceSib:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    .line 7
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    .line 9
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    .line 10
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    .line 13
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    .line 14
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    .line 16
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    .line 17
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    .line 18
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    .line 19
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    .line 20
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 153
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 156
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 158
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 157
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 163
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    .line 164
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 165
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 203
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 204
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 205
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 207
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 209
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 212
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 33
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    .line 34
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 37
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    if-eq v2, v3, :cond_4

    return v1

    .line 40
    :cond_4
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 43
    :cond_5
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    if-eq v2, v3, :cond_6

    return v1

    .line 46
    :cond_6
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 49
    :cond_7
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    if-eq v2, v3, :cond_8

    return v1

    .line 52
    :cond_8
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 55
    :cond_9
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    if-eq v2, v3, :cond_a

    return v1

    .line 58
    :cond_a
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 61
    :cond_b
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    if-eq v2, v3, :cond_c

    return v1

    .line 64
    :cond_c
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 67
    :cond_d
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    if-eq v2, v3, :cond_e

    return v1

    .line 70
    :cond_e
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 73
    :cond_f
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    if-eq v2, v3, :cond_10

    return v1

    .line 76
    :cond_10
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    if-eq v2, v3, :cond_11

    return v1

    .line 79
    :cond_11
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    if-eq p0, p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 18

    move-object/from16 v0, p0

    .line 87
    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    .line 94
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v0, v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    .line 174
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 175
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 176
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 177
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 178
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 179
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 180
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 181
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 182
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 183
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 184
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    .line 185
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    .line 186
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    const-wide/16 v0, 0x34

    add-long/2addr v0, p3

    .line 187
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    const-wide/16 v0, 0x38

    add-long/2addr v0, p3

    .line 188
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    const-wide/16 v0, 0x3c

    add-long/2addr p3, v0

    .line 189
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 148
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.hasBarringFactorVoice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .barringFactorVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .hasBarringTimeVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .barringTimeVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", .hasBarringFactorVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", .barringFactorVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", .hasBarringTimeVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .barringTimeVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .hasBarringFactorVoiceSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", .barringFactorVoiceSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", .hasBarringTimeVoiceSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", .barringTimeVoiceSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", .hasBarringFactorVideoSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .barringFactorVideoSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .hasBarringTimeVideoSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .barringTimeVideoSib = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 217
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoice:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 218
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoice:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 219
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 220
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoice:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 221
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideo:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 222
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideo:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 223
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideo:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 224
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideo:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 225
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVoiceSib:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 226
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVoiceSib:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 227
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVoiceSib:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    .line 228
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVoiceSib:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 229
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringFactorVideoSib:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    .line 230
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringFactorVideoSib:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    .line 231
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->hasBarringTimeVideoSib:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x3c

    add-long/2addr p2, v0

    .line 232
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->barringTimeVideoSib:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 193
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 194
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
