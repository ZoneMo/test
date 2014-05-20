.class final Lcom/tencent/mm/plugin/b/a/a;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field cII:Lcom/tencent/mm/plugin/d/b/b;

.field cIJ:Lcom/tencent/mm/plugin/d/b/c;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 66
    new-instance v0, Lcom/tencent/mm/plugin/d/b/b;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/b/a/a;->cII:Lcom/tencent/mm/plugin/d/b/b;

    .line 67
    new-instance v0, Lcom/tencent/mm/plugin/d/b/c;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/d/b/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/b/a/a;->cIJ:Lcom/tencent/mm/plugin/d/b/c;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x1bb

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "/cgi-bin/micromsg-bin/kvreportrsa"

    return-object v0
.end method

.method public final wK()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/mm/plugin/b/a/a;->cII:Lcom/tencent/mm/plugin/d/b/b;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/mm/plugin/b/a/a;->cIJ:Lcom/tencent/mm/plugin/d/b/c;

    return-object v0
.end method
