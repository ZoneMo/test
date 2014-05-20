.class final Lcom/tencent/mm/ui/chatting/js;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field final synthetic gQm:Lcom/tencent/mm/ui/chatting/jr;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/jr;)V
    .locals 0
    .parameter

    .prologue
    .line 5616
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5620
    .line 5621
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 5623
    packed-switch v0, :pswitch_data_0

    .line 5704
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "Unknown action type received by OnDragListener."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 5707
    :cond_0
    :goto_0
    return v6

    .line 5626
    :pswitch_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "ACTION_DRAG_STARTED"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5631
    :pswitch_1
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "ACTION_DRAG_ENTERED"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5636
    :pswitch_2
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "ACTION_DRAG_LOCATION"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5641
    :pswitch_3
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "ACTION_DRAG_ENDED"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5646
    :pswitch_4
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "ACTION_DROP"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5647
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    .line 5648
    if-eqz v9, :cond_0

    .line 5649
    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    move v8, v7

    .line 5650
    :goto_1
    if-ge v8, v10, :cond_0

    .line 5651
    invoke-virtual {v9, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 5652
    if-nez v0, :cond_2

    .line 5653
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "item == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5650
    :cond_1
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 5656
    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5657
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 5659
    :cond_3
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 5660
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/tools/t;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/ui/tools/t;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5661
    iget v2, v1, Lcom/tencent/mm/pluginsdk/ui/tools/t;->fuA:I

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/tencent/mm/pluginsdk/ui/tools/t;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 5662
    iget v2, v1, Lcom/tencent/mm/pluginsdk/ui/tools/t;->fuA:I

    packed-switch v2, :pswitch_data_1

    .line 5678
    invoke-static {}, Lcom/tencent/mm/model/ct;->vB()Lcom/tencent/mm/model/ct;

    move-result-object v0

    const/16 v2, 0x26

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/model/ct;->a(I[Ljava/lang/Object;)V

    .line 5680
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/tools/t;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)Ljava/lang/String;

    .line 5681
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->K(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/sdk/modelmsg/WXFileObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/p;)V

    .line 5682
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->K(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 5683
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->K(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/a/c;->ar(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/au;->K(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 5684
    new-instance v2, Lcom/tencent/mm/pluginsdk/model/app/k;

    invoke-direct {v2}, Lcom/tencent/mm/pluginsdk/model/app/k;-><init>()V

    .line 5685
    const-string v1, "wx4310bbd51be7d979"

    iput-object v1, v2, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    .line 5686
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/model/app/o;->c(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 5688
    iget-object v1, v2, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/pluginsdk/model/app/s;->a(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    goto/16 :goto_2

    .line 5665
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/ui/tools/t;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)Ljava/lang/String;

    .line 5666
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->K(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/tencent/mm/model/v;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 5667
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    if-eqz v0, :cond_4

    move v0, v6

    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->K(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    .line 5672
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5673
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5674
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->b(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 5693
    :cond_5
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "get file path failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5696
    :cond_6
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 5697
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/js;->gQm:Lcom/tencent/mm/ui/chatting/jr;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/jr;->gPG:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->wD(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 5623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 5662
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
