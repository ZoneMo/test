.class public final Lcom/tencent/mm/q/c;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 21
    new-instance v1, Lcom/tencent/mm/protocal/a/ki;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ki;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 22
    new-instance v1, Lcom/tencent/mm/protocal/a/kj;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/kj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 23
    const-string v1, "/cgi-bin/micromsg-bin/getquestion"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 24
    const/16 v1, 0xf3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 26
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 27
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/q/c;->cke:Lcom/tencent/mm/n/a;

    .line 29
    iget-object v0, p0, Lcom/tencent/mm/q/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ki;

    iput-object p1, v0, Lcom/tencent/mm/protocal/a/ki;->fMe:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/q/a;->eR(Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/tencent/mm/q/c;->cjh:Lcom/tencent/mm/n/m;

    .line 57
    iget-object v0, p0, Lcom/tencent/mm/q/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/q/c;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 35
    invoke-static {}, Lcom/tencent/mm/q/a;->yp()V

    .line 36
    iget-object v0, p0, Lcom/tencent/mm/q/c;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/kj;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kj;->dGS:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/q/a;->eR(Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/q/c;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 46
    return-void

    .line 38
    :cond_1
    const/16 v0, -0x96

    if-ne p3, v0, :cond_2

    .line 39
    invoke-static {}, Lcom/tencent/mm/q/a;->yn()V

    goto :goto_0

    .line 41
    :cond_2
    const/16 v0, -0x97

    if-ne p3, v0, :cond_0

    .line 42
    invoke-static {}, Lcom/tencent/mm/q/a;->yl()V

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0xf3

    return v0
.end method
