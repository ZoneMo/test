.class public final Lcom/tencent/mm/n/c;
.super Lcom/tencent/mm/protocal/p;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/protocal/n;


# instance fields
.field private clD:I

.field private clJ:Lcom/tencent/mm/am/a;

.field private clK:Z

.field private cmdId:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/am/a;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/tencent/mm/protocal/p;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/tencent/mm/n/c;->clJ:Lcom/tencent/mm/am/a;

    .line 104
    iput p2, p0, Lcom/tencent/mm/n/c;->clD:I

    .line 105
    iput p3, p0, Lcom/tencent/mm/n/c;->cmdId:I

    .line 106
    iput-boolean p4, p0, Lcom/tencent/mm/n/c;->clK:Z

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/n/c;)Lcom/tencent/mm/am/a;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/n/c;->clJ:Lcom/tencent/mm/am/a;

    return-object v0
.end method


# virtual methods
.method public final getCmdId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/tencent/mm/n/c;->cmdId:I

    return v0
.end method

.method public final wy()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/tencent/mm/n/c;->clD:I

    return v0
.end method

.method public final wz()[B
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/tencent/mm/n/c;->clK:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tencent/mm/n/c;->clJ:Lcom/tencent/mm/am/a;

    check-cast v0, Lcom/tencent/mm/protocal/a/rs;

    invoke-static {p0}, Lcom/tencent/mm/protocal/m;->b(Lcom/tencent/mm/protocal/p;)Lcom/tencent/mm/protocal/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/a/rs;->a(Lcom/tencent/mm/protocal/a/au;)Lcom/tencent/mm/protocal/a/rs;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/n/c;->clJ:Lcom/tencent/mm/am/a;

    invoke-virtual {v0}, Lcom/tencent/mm/am/a;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
