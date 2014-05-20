.class public Lcom/tencent/mm/protocal/JsapiPermissionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final fxC:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

.field public static final fxD:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;


# instance fields
.field private fxB:I

.field private fxE:I

.field public fxF:I

.field public fxG:I

.field public fxH:I

.field public fxI:I

.field public fxJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    const/4 v1, -0x1

    const/4 v2, -0x5

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;-><init>(II)V

    sput-object v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxC:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 60
    new-instance v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    invoke-direct {v0, v3, v3}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;-><init>(II)V

    sput-object v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxD:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 485
    new-instance v0, Lcom/tencent/mm/protocal/i;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/i;-><init>()V

    sput-object v0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    .line 91
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    .line 92
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    .line 93
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    .line 94
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    .line 67
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    .line 68
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    .line 91
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    .line 92
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    .line 93
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    .line 94
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    .line 83
    iput p1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    .line 84
    iput p2, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    .line 86
    const-string v0, "MicroMsg.JsapiPermissionWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw <init>, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    .line 91
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    .line 92
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    .line 93
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    .line 94
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    .line 503
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/protocal/a/lz;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    .line 91
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    .line 92
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    .line 93
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    .line 94
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    .line 72
    if-nez p1, :cond_0

    .line 73
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    .line 74
    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    .line 79
    :goto_0
    const-string v0, "MicroMsg.JsapiPermissionWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "edw <init>, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 76
    :cond_0
    iget v0, p1, Lcom/tencent/mm/protocal/a/lz;->fJG:I

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    .line 77
    iget v0, p1, Lcom/tencent/mm/protocal/a/lz;->fNd:I

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    goto :goto_0
.end method


# virtual methods
.method public final avD()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    return v0
.end method

.method public final avH()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    return v0
.end method

.method public final avI()Z
    .locals 4

    .prologue
    .line 105
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 106
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowLog, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avJ()Z
    .locals 4

    .prologue
    .line 111
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 112
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowImagePreview, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avK()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 117
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    if-lez v1, :cond_0

    .line 118
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowProfile true, hit limit times = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_0
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    .line 124
    :goto_1
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowProfile, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final avL()Z
    .locals 4

    .prologue
    .line 129
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowOpenProductView, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avM()Z
    .locals 4

    .prologue
    .line 135
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 136
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowOpenProductView, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avN()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 141
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    if-lez v1, :cond_0

    .line 142
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShareWeibo true, hit limit times = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 148
    :goto_1
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShareWeibo, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final avO()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 153
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    if-lez v1, :cond_0

    .line 154
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShareTimeline true, hit limit times = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_0
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_1

    .line 160
    :goto_1
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShareTimeline, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final avP()Z
    .locals 4

    .prologue
    .line 165
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 166
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowAddContact, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avQ()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 171
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    if-lez v1, :cond_0

    .line 172
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowSendAppMsg true, hit limit times = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    .line 179
    :goto_0
    return v0

    .line 177
    :cond_0
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_1

    .line 178
    :goto_1
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowSendAppMsg, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final avR()Z
    .locals 4

    .prologue
    .line 183
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowScanQrcode, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avS()Z
    .locals 4

    .prologue
    .line 189
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 190
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowAddEmoticon, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avT()Z
    .locals 4

    .prologue
    .line 195
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit16 v0, v0, 0x200

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 196
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowHasEmoticon, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avU()Z
    .locals 4

    .prologue
    .line 201
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 202
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowCancelAddEmoticon, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avV()Z
    .locals 4

    .prologue
    .line 213
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit16 v0, v0, 0x1000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 214
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowHideToolbar, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avW()Z
    .locals 4

    .prologue
    .line 219
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit16 v0, v0, 0x2000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 220
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShowToolbar, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avX()Z
    .locals 4

    .prologue
    .line 225
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    and-int/lit16 v0, v0, 0x4000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 226
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowHideOptionMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avY()Z
    .locals 4

    .prologue
    .line 231
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 232
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShowOptionMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final avZ()Z
    .locals 4

    .prologue
    .line 237
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 238
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowGetNetworkType, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return v0

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awA()Z
    .locals 4

    .prologue
    .line 411
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 412
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowLaunch3RdApp, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return v0

    .line 411
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awB()Z
    .locals 4

    .prologue
    .line 423
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 424
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowWriteCommData, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awC()Z
    .locals 4

    .prologue
    .line 429
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 430
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowAddDownloadTask, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return v0

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awD()Z
    .locals 4

    .prologue
    .line 435
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 436
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowOpenUrlByExtBrowser, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awE()Z
    .locals 4

    .prologue
    .line 441
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 442
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowOpenFileChooser, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return v0

    .line 441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awF()Z
    .locals 4

    .prologue
    .line 447
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 448
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowGetBrandWCPayBindCardRequest, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return v0

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awG()Z
    .locals 4

    .prologue
    .line 453
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 454
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowGeoLocation, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return v0

    .line 453
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awa()Z
    .locals 4

    .prologue
    .line 243
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 244
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowCloseWindow, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awb()Z
    .locals 4

    .prologue
    .line 249
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 250
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowFontMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awc()Z
    .locals 4

    .prologue
    .line 255
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 256
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowProfileMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awd()Z
    .locals 4

    .prologue
    .line 261
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 262
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowAddContactMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awe()Z
    .locals 4

    .prologue
    .line 267
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 268
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowSendAppMsgMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return v0

    .line 267
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awf()Z
    .locals 4

    .prologue
    .line 273
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 274
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShareWeiboMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awg()Z
    .locals 4

    .prologue
    .line 279
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 280
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShareTimelineMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awh()Z
    .locals 4

    .prologue
    .line 285
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 286
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowDownloadInWebView, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awi()Z
    .locals 4

    .prologue
    .line 291
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 292
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowGetIntallState, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awj()Z
    .locals 4

    .prologue
    .line 297
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 298
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowJumpToInstallUrl, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return v0

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awk()Z
    .locals 4

    .prologue
    .line 309
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 310
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowDoPay, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awl()Z
    .locals 4

    .prologue
    .line 315
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 316
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowEditTransactionAddressReq, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awm()Z
    .locals 4

    .prologue
    .line 321
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x4000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 322
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowGetRecentlyUserdAddressReq, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return v0

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awn()Z
    .locals 4

    .prologue
    .line 327
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 328
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowGetHeadingAndPitch, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v0

    .line 327
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awo()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 333
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    if-lez v1, :cond_0

    .line 334
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMailTimes true, hit limit times = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    .line 341
    :goto_0
    return v0

    .line 339
    :cond_0
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 340
    :goto_1
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowSendMail, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final awp()Z
    .locals 4

    .prologue
    .line 345
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 346
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowSendMainMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return v0

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awq()Z
    .locals 4

    .prologue
    .line 351
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 352
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowAddDownloadTask, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awr()Z
    .locals 4

    .prologue
    .line 357
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 358
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowCancelDownloadTask, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return v0

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aws()Z
    .locals 4

    .prologue
    .line 363
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 364
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowQueryDownloadTask, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awt()Z
    .locals 4

    .prologue
    .line 369
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x200

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 370
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowInstallDownloadTask, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awu()Z
    .locals 4

    .prologue
    .line 375
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 376
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowNotifyDownloadTaskState, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return v0

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awv()Z
    .locals 4

    .prologue
    .line 381
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x800

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 382
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShareToBrandMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return v0

    .line 381
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aww()Z
    .locals 4

    .prologue
    .line 387
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x1000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 388
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowCopyUrlMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awx()Z
    .locals 4

    .prologue
    .line 393
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit16 v0, v0, 0x2000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 394
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowOpenWithBrowserMenu, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return v0

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awy()Z
    .locals 4

    .prologue
    .line 399
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 400
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowShowWeixinCertified, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return v0

    .line 399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final awz()Z
    .locals 4

    .prologue
    .line 405
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 406
    :goto_0
    const-string v1, "MicroMsg.JsapiPermissionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowOpenSpecificView, ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return v0

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 506
    const-string v0, "jsapi_perm_wrapper_bitset"

    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string v0, "jsapi_perm_wrapper_bitset2"

    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string v0, "jsapi_perm_wrapper_profileLimitTimes"

    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string v0, "jsapi_perm_wrapper_sendAppMsgLimitTimes"

    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v0, "jsapi_perm_wrapper_shareWeiboLimitTimes"

    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string v0, "jsapi_perm_wrapper_shareTimelineLimitTimes"

    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    const-string v0, "jsapi_perm_wrapper_sendMailTimes"

    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 516
    const-string v0, "jsapi_perm_wrapper_bitset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    .line 517
    const-string v0, "jsapi_perm_wrapper_bitset2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    .line 518
    const-string v0, "jsapi_perm_wrapper_profileLimitTimes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    .line 519
    const-string v0, "jsapi_perm_wrapper_sendAppMsgLimitTimes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    .line 520
    const-string v0, "jsapi_perm_wrapper_shareWeiboLimitTimes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    .line 521
    const-string v0, "jsapi_perm_wrapper_shareTimelineLimitTimes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    .line 522
    const-string v0, "jsapi_perm_wrapper_sendMailTimes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    .line 523
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    const-string v1, "[bitset=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, ", bitset2=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget v1, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxG:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v0, p0, Lcom/tencent/mm/protocal/JsapiPermissionWrapper;->fxJ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    return-void
.end method
