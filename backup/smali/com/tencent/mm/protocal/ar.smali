.class public final Lcom/tencent/mm/protocal/ar;
.super Lcom/tencent/mm/protocal/p;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/n;


# instance fields
.field public fys:Lcom/tencent/mm/protocal/a/pd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/mm/protocal/p;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/mm/protocal/a/pd;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/a/pd;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/ar;->fys:Lcom/tencent/mm/protocal/a/pd;

    return-void
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x79

    return v0
.end method

.method public final wy()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x8a

    return v0
.end method

.method public final wz()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/mm/protocal/ar;->fys:Lcom/tencent/mm/protocal/a/pd;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/a/pd;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
