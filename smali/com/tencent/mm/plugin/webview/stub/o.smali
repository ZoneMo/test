.class final Lcom/tencent/mm/plugin/webview/stub/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic feK:Lcom/tencent/mm/plugin/webview/stub/m;

.field final synthetic feL:I

.field final synthetic feM:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/webview/stub/m;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/tencent/mm/plugin/webview/stub/o;->feK:Lcom/tencent/mm/plugin/webview/stub/m;

    iput p2, p0, Lcom/tencent/mm/plugin/webview/stub/o;->feL:I

    iput p3, p0, Lcom/tencent/mm/plugin/webview/stub/o;->feM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 386
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/webview/stub/o;->feL:I

    iget v2, p0, Lcom/tencent/mm/plugin/webview/stub/o;->feM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 387
    return-void
.end method
