.class final Lcom/tencent/mm/ui/contact/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic frw:Lcom/tencent/mm/pluginsdk/model/j;

.field final synthetic gUG:Lcom/tencent/mm/ui/contact/cy;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/cy;Lcom/tencent/mm/pluginsdk/model/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/cz;->gUG:Lcom/tencent/mm/ui/contact/cy;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/cz;->frw:Lcom/tencent/mm/pluginsdk/model/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/cz;->frw:Lcom/tencent/mm/pluginsdk/model/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 80
    return-void
.end method
