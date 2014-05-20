.class final Lcom/tencent/mm/ui/transmit/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tencent/mm/ui/transmit/m;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 137
    new-instance v0, Lcom/tencent/mm/c/a/x;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/x;-><init>()V

    .line 138
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/m;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->a(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/b;->a(Lcom/tencent/mm/c/a/x;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    iget v1, v1, Lcom/tencent/mm/c/a/z;->ret:I

    if-nez v1, :cond_0

    .line 139
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/m;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->aal()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/m;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    const v2, 0x7f070a4d

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 144
    :goto_0
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2b28

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/m;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->finish()V

    .line 146
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/m;->hrJ:Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->aal()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    iget v0, v0, Lcom/tencent/mm/c/a/y;->type:I

    const v2, 0x7f070aca

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto :goto_0
.end method
