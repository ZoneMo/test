.class final Lcom/tencent/mm/ui/setting/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hfy:Lcom/tencent/mm/l/a;

.field final synthetic hfz:Lcom/tencent/mm/ui/setting/cx;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/cx;Lcom/tencent/mm/l/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/cy;->hfz:Lcom/tencent/mm/ui/setting/cx;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/cy;->hfy:Lcom/tencent/mm/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/cy;->hfy:Lcom/tencent/mm/l/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 221
    return-void
.end method
