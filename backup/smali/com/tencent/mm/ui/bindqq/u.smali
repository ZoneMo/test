.class final Lcom/tencent/mm/ui/bindqq/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gJB:Lcom/tencent/mm/ui/bindqq/QQGroupUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindqq/QQGroupUI;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tencent/mm/ui/bindqq/u;->gJB:Lcom/tencent/mm/ui/bindqq/QQGroupUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/mm/ui/bindqq/u;->gJB:Lcom/tencent/mm/ui/bindqq/QQGroupUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindqq/QQGroupUI;->b(Lcom/tencent/mm/ui/bindqq/QQGroupUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/g;->a(Landroid/widget/ListView;)V

    .line 176
    return-void
.end method
