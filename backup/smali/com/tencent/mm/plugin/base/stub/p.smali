.class final Lcom/tencent/mm/plugin/base/stub/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cOr:Lcom/tencent/mm/plugin/base/stub/o;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/base/stub/o;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/mm/plugin/base/stub/p;->cOr:Lcom/tencent/mm/plugin/base/stub/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/tencent/mm/plugin/base/stub/p;->cOr:Lcom/tencent/mm/plugin/base/stub/o;

    invoke-static {v1}, Lcom/tencent/mm/plugin/base/stub/o;->a(Lcom/tencent/mm/plugin/base/stub/o;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/v;->tk()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/base/stub/p;->cOr:Lcom/tencent/mm/plugin/base/stub/o;

    invoke-static {v3}, Lcom/tencent/mm/plugin/base/stub/o;->b(Lcom/tencent/mm/plugin/base/stub/o;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ag;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/base/stub/p;->cOr:Lcom/tencent/mm/plugin/base/stub/o;

    invoke-static {v0}, Lcom/tencent/mm/plugin/base/stub/o;->c(Lcom/tencent/mm/plugin/base/stub/o;)Lcom/tencent/mm/plugin/base/stub/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/mm/plugin/base/stub/r;->ae(Z)V

    .line 76
    return-void
.end method
