.class public final Lcom/tencent/mm/plugin/d/a/f;
.super Lcom/tencent/mm/protocal/a/mf;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/d/a/e;


# instance fields
.field private dZj:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tencent/mm/protocal/a/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final YS()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/tencent/mm/plugin/d/a/f;->fAC:I

    .line 34
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/d/a/f;->fAC:I

    .line 35
    return v0
.end method

.method public final YW()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/d/a/f;->dZj:I

    .line 12
    return-void
.end method

.method public final YX()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/tencent/mm/plugin/d/a/f;->dZj:I

    return v0
.end method

.method public final YY()I
    .locals 3

    .prologue
    .line 28
    iget v1, p0, Lcom/tencent/mm/plugin/d/a/f;->fNl:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v0, v2

    const/high16 v2, 0x400

    or-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/d/a/f;->fNk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method
