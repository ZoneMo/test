.class final Lcom/tencent/mm/plugin/safedevice/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic eaf:Lcom/tencent/mm/plugin/safedevice/a/b;

.field final synthetic eag:Lcom/tencent/mm/plugin/safedevice/ui/d;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/safedevice/ui/d;Lcom/tencent/mm/plugin/safedevice/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tencent/mm/plugin/safedevice/ui/e;->eag:Lcom/tencent/mm/plugin/safedevice/ui/d;

    iput-object p2, p0, Lcom/tencent/mm/plugin/safedevice/ui/e;->eaf:Lcom/tencent/mm/plugin/safedevice/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/safedevice/ui/e;->eaf:Lcom/tencent/mm/plugin/safedevice/a/b;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 101
    return-void
.end method
