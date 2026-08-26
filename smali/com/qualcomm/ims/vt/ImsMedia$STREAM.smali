.class public final enum Lcom/qualcomm/ims/vt/ImsMedia$STREAM;
.super Ljava/lang/Enum;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STREAM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/ims/vt/ImsMedia$STREAM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

.field public static final enum ALT:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

.field public static final enum PRIMARY:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;


# direct methods
.method private static synthetic $values()[Lcom/qualcomm/ims/vt/ImsMedia$STREAM;
    .locals 2

    .line 65
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->PRIMARY:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->ALT:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    filled-new-array {v0, v1}, [Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    const-string v1, "PRIMARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->PRIMARY:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    .line 67
    new-instance v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    const-string v1, "ALT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->ALT:Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    .line 65
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->$values()[Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->$VALUES:[Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/ims/vt/ImsMedia$STREAM;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 65
    const-class v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    return-object p0
.end method

.method public static values()[Lcom/qualcomm/ims/vt/ImsMedia$STREAM;
    .locals 1

    .line 65
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->$VALUES:[Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    invoke-virtual {v0}, [Lcom/qualcomm/ims/vt/ImsMedia$STREAM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/ims/vt/ImsMedia$STREAM;

    return-object v0
.end method
