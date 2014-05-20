.class final Lcom/tencent/mm/plugin/search/model/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/al;


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/e;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ca(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/e;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->d(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    const v1, 0x10009

    new-instance v2, Lcom/tencent/mm/plugin/search/model/w;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/e;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {v2, v3, p1}, Lcom/tencent/mm/plugin/search/model/w;-><init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 1019
    return-void
.end method
