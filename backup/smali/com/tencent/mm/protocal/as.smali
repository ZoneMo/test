.class public final Lcom/tencent/mm/protocal/as;
.super Lcom/tencent/mm/protocal/q;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/o;


# instance fields
.field public fyt:Lcom/tencent/mm/protocal/a/pe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tencent/mm/protocal/q;-><init>()V

    .line 35
    new-instance v0, Lcom/tencent/mm/protocal/a/pe;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/pe;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    return-void
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x3b9aca79

    return v0
.end method

.method public final s([B)I
    .locals 1
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/tencent/mm/protocal/a/pe;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/pe;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/a/pe;->bI([B)Lcom/tencent/mm/protocal/a/pe;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    .line 40
    iget-object v0, p0, Lcom/tencent/mm/protocal/as;->fyt:Lcom/tencent/mm/protocal/a/pe;

    iget v0, v0, Lcom/tencent/mm/protocal/a/pe;->fAY:I

    return v0
.end method
