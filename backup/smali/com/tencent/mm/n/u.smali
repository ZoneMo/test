.class public final Lcom/tencent/mm/n/u;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field private final clP:Lcom/tencent/mm/protocal/k;

.field private final clQ:Lcom/tencent/mm/protocal/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/mm/protocal/k;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/n/u;->clP:Lcom/tencent/mm/protocal/k;

    .line 16
    new-instance v0, Lcom/tencent/mm/protocal/l;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/n/u;->clQ:Lcom/tencent/mm/protocal/l;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x17c

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "/cgi-bin/micromsg-bin/newauth"

    return-object v0
.end method

.method protected final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/mm/n/u;->clP:Lcom/tencent/mm/protocal/k;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/mm/n/u;->clQ:Lcom/tencent/mm/protocal/l;

    return-object v0
.end method
