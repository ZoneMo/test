.class final Lcom/tencent/mm/pluginsdk/ui/chat/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/av;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/av;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-static {v2}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->a(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Lcom/tencent/mm/pluginsdk/ui/chat/as;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/ui/chat/as;->fqS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v2, "query_source_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v2, "preview_image"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v2, "preview_image_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/av;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->b(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "gallery"

    const-string v3, ".ui.GalleryEntryUI"

    const/16 v4, 0xd9

    invoke-static {v1, v2, v3, v0, v4}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/av;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->c(Lcom/tencent/mm/pluginsdk/ui/chat/au;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 88
    return-void
.end method
