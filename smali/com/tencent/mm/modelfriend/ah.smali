.class public final Lcom/tencent/mm/modelfriend/ah;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field private final cri:Lcom/tencent/mm/protocal/s;

.field private final crj:Lcom/tencent/mm/protocal/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 372
    new-instance v0, Lcom/tencent/mm/protocal/s;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/s;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ah;->cri:Lcom/tencent/mm/protocal/s;

    .line 373
    new-instance v0, Lcom/tencent/mm/protocal/t;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/t;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ah;->crj:Lcom/tencent/mm/protocal/t;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 387
    const/16 v0, 0x91

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    const-string v0, "/cgi-bin/micromsg-bin/bindopmobileforreg"

    return-object v0
.end method

.method public final wK()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method protected final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ah;->cri:Lcom/tencent/mm/protocal/s;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ah;->crj:Lcom/tencent/mm/protocal/t;

    return-object v0
.end method
