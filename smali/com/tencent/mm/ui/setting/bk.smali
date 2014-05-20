.class final Lcom/tencent/mm/ui/setting/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic heU:Lcom/tencent/mm/ui/setting/bi;

.field final synthetic heV:Lcom/tencent/mm/modelsimple/aq;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/bi;Lcom/tencent/mm/modelsimple/aq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/bk;->heU:Lcom/tencent/mm/ui/setting/bi;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/bk;->heV:Lcom/tencent/mm/modelsimple/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 582
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/bk;->heV:Lcom/tencent/mm/modelsimple/aq;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 583
    return-void
.end method
