.class public final Lcom/tencent/mm/modelsimple/af;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field private final cxH:Lcom/tencent/mm/protocal/ax;

.field private final cxI:Lcom/tencent/mm/protocal/ay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 444
    new-instance v0, Lcom/tencent/mm/protocal/ax;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ax;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/af;->cxH:Lcom/tencent/mm/protocal/ax;

    .line 445
    new-instance v0, Lcom/tencent/mm/protocal/ay;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ay;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/af;->cxI:Lcom/tencent/mm/protocal/ay;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 459
    const/16 v0, 0x7e

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    const-string v0, "/cgi-bin/micromsg-bin/newreg"

    return-object v0
.end method

.method protected final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/af;->cxH:Lcom/tencent/mm/protocal/ax;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/af;->cxI:Lcom/tencent/mm/protocal/ay;

    return-object v0
.end method
