.class final Lcom/tencent/mm/plugin/ext/provider/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# instance fields
.field final synthetic dgk:Lcom/tencent/mm/plugin/ext/provider/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/ext/provider/k;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/tencent/mm/plugin/ext/provider/l;->dgk:Lcom/tencent/mm/plugin/ext/provider/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 1
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/tencent/mm/plugin/ext/provider/l;->dgk:Lcom/tencent/mm/plugin/ext/provider/k;

    iget-object v0, v0, Lcom/tencent/mm/plugin/ext/provider/k;->cOF:Lcom/tencent/mm/pluginsdk/d/a/a;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/d/a/a;->countDown()V

    .line 396
    return-void
.end method
