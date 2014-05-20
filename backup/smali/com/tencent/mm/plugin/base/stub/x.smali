.class final Lcom/tencent/mm/plugin/base/stub/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# instance fields
.field final synthetic cOG:Lcom/tencent/mm/plugin/base/stub/w;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/base/stub/w;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/x;->cOG:Lcom/tencent/mm/plugin/base/stub/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    const-string v0, "MicroMsg.WXCommProvider"

    const-string v1, "checkIsLogin() onSceneEnd()"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/x;->cOG:Lcom/tencent/mm/plugin/base/stub/w;

    iget-object v0, v0, Lcom/tencent/mm/plugin/base/stub/w;->cOF:Lcom/tencent/mm/pluginsdk/d/a/a;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/d/a/a;->countDown()V

    .line 229
    return-void
.end method
