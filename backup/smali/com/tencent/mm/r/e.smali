.class public final Lcom/tencent/mm/r/e;
.super Lcom/tencent/mm/model/aj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/mm/model/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final cn(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_0

    const v0, 0x2405ffff

    if-gt p1, v0, :cond_1

    :cond_0
    move v0, v2

    .line 27
    :goto_0
    const-string v3, "MicroMsg.EmojiInfoDataTransfer"

    const-string v4, "in needTransfer, sVer = %d, result = %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v0

    :cond_1
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "MicroMsg.EmojiInfoDataTransfer"

    return-object v0
.end method

.method public final transfer(I)V
    .locals 2
    .parameter

    .prologue
    .line 16
    const-string v0, "MicroMsg.EmojiInfoDataTransfer"

    const-string v1, "start transfer EmojiInfoStorage and EmojiGroupInfoStorage"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "MicroMsg.EmojiInfoDataTransfer"

    const-string v1, "end transfer EmojiInfoStorage and EmojiGroupInfoStorage"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
