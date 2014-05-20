.class final Lcom/tencent/mm/modelfriend/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/applet/f;


# instance fields
.field final synthetic cqQ:Lcom/tencent/mm/modelfriend/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/p;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/tencent/mm/modelfriend/r;->cqQ:Lcom/tencent/mm/modelfriend/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final de(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 261
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/r;->cqQ:Lcom/tencent/mm/modelfriend/p;

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/p;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 262
    :cond_0
    const-string v1, "MicroMsg.FriendAdapter"

    const-string v2, "pos is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1
    :goto_0
    return-object v0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/modelfriend/r;->cqQ:Lcom/tencent/mm/modelfriend/p;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/modelfriend/p;->dd(I)Lcom/tencent/mm/protocal/a/mx;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/tencent/mm/protocal/a/mx;->eBo:Ljava/lang/String;

    goto :goto_0
.end method

.method public final zl()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/r;->cqQ:Lcom/tencent/mm/modelfriend/p;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/p;->getCount()I

    move-result v0

    return v0
.end method
