.class final Lcom/tencent/mm/ui/setting/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hfH:Lcom/tencent/mm/modelsimple/ap;

.field final synthetic hfI:Lcom/tencent/mm/ui/setting/dd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/dd;Lcom/tencent/mm/modelsimple/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/de;->hfI:Lcom/tencent/mm/ui/setting/dd;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/de;->hfH:Lcom/tencent/mm/modelsimple/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/de;->hfH:Lcom/tencent/mm/modelsimple/ap;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 110
    return-void
.end method
