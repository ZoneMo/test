.class final Lcom/tencent/mm/ui/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eeS:Ljava/lang/String;

.field final synthetic gom:Lcom/tencent/mm/ui/cy;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/cy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tencent/mm/ui/db;->gom:Lcom/tencent/mm/ui/cy;

    iput-object p2, p0, Lcom/tencent/mm/ui/db;->eeS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/mm/ui/db;->eeS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/tencent/mm/ui/db;->eeS:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/tencent/mm/ui/db;->gom:Lcom/tencent/mm/ui/cy;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/cy;->startActivity(Landroid/content/Intent;)V

    .line 163
    :cond_0
    return-void
.end method
