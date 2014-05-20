.class public abstract Lcom/tencent/mm/plugin/backup/b/a;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field protected cJa:Ljava/lang/String;

.field protected cLA:Z

.field protected cLy:I

.field protected cLz:I

.field protected cjh:Lcom/tencent/mm/n/m;

.field protected ckU:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->cJa:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/a;->cLy:I

    .line 16
    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/a;->cLz:I

    .line 18
    iput v1, p0, Lcom/tencent/mm/plugin/backup/b/a;->ckU:I

    .line 20
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/backup/b/a;->cLA:Z

    return-void
.end method


# virtual methods
.method public final HG()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->cLy:I

    return v0
.end method

.method public abstract HH()Lcom/tencent/mm/network/aj;
.end method

.method public final HI()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->cLz:I

    return v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p2, p0, Lcom/tencent/mm/plugin/backup/b/a;->cjh:Lcom/tencent/mm/n/m;

    .line 57
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->cLA:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/backup/b/a;->HH()Lcom/tencent/mm/network/aj;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/backup/b/a;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    goto :goto_0
.end method

.method protected cancel()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->cLA:Z

    .line 49
    invoke-super {p0}, Lcom/tencent/mm/n/x;->cancel()V

    .line 50
    return-void
.end method

.method public final iC(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->cJa:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->cJa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final vR()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/tencent/mm/plugin/backup/b/a;->ckU:I

    return v0
.end method
