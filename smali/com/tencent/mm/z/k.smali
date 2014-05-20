.class public final Lcom/tencent/mm/z/k;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field private final cvg:Lcom/tencent/mm/protocal/ao;

.field private final cvh:Lcom/tencent/mm/protocal/ap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 667
    new-instance v0, Lcom/tencent/mm/protocal/ao;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ao;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/k;->cvg:Lcom/tencent/mm/protocal/ao;

    .line 668
    new-instance v0, Lcom/tencent/mm/protocal/ap;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/z/k;->cvh:Lcom/tencent/mm/protocal/ap;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 682
    const/16 v0, 0x25

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    const-string v0, "/cgi-bin/micromsg-bin/newinit"

    return-object v0
.end method

.method protected final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/tencent/mm/z/k;->cvg:Lcom/tencent/mm/protocal/ao;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/tencent/mm/z/k;->cvh:Lcom/tencent/mm/protocal/ap;

    return-object v0
.end method
