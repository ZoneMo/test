.class final Lcom/tencent/mm/ui/tools/gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hnx:Lcom/tencent/mm/ui/tools/ge;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ge;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gi;->hnx:Lcom/tencent/mm/ui/tools/ge;

    iput-boolean p2, p0, Lcom/tencent/mm/ui/tools/gi;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gi;->hnx:Lcom/tencent/mm/ui/tools/ge;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/gi;->val$visible:Z

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Lcom/tencent/mm/ui/tools/WebViewUI;Z)V

    .line 322
    return-void
.end method
