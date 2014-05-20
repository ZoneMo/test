.class final Lcom/tencent/mm/ui/chatting/cj;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/chatting/j;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/j;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/j;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/cj;->dws:I

    if-eq v0, v1, :cond_1

    .line 60
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f03007b

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 61
    new-instance v0, Lcom/tencent/mm/ui/chatting/j;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/cj;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/j;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/chatting/j;->al(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/j;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 69
    check-cast p1, Lcom/tencent/mm/ui/chatting/j;

    .line 71
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 73
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 74
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v2

    .line 75
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gMy:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    if-eqz v2, :cond_15

    .line 77
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/bv;->dy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_14

    .line 81
    :goto_0
    invoke-static {p3}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 82
    iget-boolean v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/j;->gMy:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/j;->gMy:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :cond_0
    :goto_1
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/j;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 89
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/j;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/j;->cMS:Landroid/widget/ImageView;

    new-instance v3, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v3, v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->cMS:Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 100
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 101
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_13

    .line 107
    invoke-static {v0}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    move-object v2, v0

    .line 110
    :goto_2
    if-eqz v2, :cond_6

    .line 112
    iget-object v3, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iget v1, v2, Lcom/tencent/mm/j/b;->cgH:I

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_2
    const-string v0, "MicroMsg.AppInfoLogic"

    const-string v1, "getAppInfo, appId is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 113
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/model/app/k;->apQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-static {p3, v2, p4}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/j/b;Lcom/tencent/mm/storage/ak;)V

    .line 117
    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    :cond_4
    iget-object v0, v2, Lcom/tencent/mm/j/b;->appName:Ljava/lang/String;

    .line 118
    :goto_4
    iget-object v3, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->aF(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 119
    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/j;->dkS:Landroid/widget/TextView;

    invoke-static {p3, v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->a(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dkS:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/model/app/k;->apQ()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 123
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dkS:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    invoke-static {p3, v0, p4, v2, v3}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/j/b;Ljava/lang/String;)V

    .line 127
    :goto_5
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dkS:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {p3, v0, v3}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 132
    :goto_6
    iget-object v0, v2, Lcom/tencent/mm/j/b;->bXF:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/tencent/mm/j/b;->bXF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 133
    :cond_5
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gKg:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_7
    iget v0, v2, Lcom/tencent/mm/j/b;->type:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_8
    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->i(Lcom/tencent/mm/pluginsdk/model/app/k;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gKh:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gKg:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gKh:Landroid/widget/ImageView;

    invoke-static {v2, p4}, Lcom/tencent/mm/ui/chatting/kk;->a(Lcom/tencent/mm/j/b;Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/ui/chatting/kk;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/tencent/mm/ui/chatting/cj;->c(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V

    .line 167
    :cond_6
    iget-object v7, p1, Lcom/tencent/mm/ui/chatting/j;->gki:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    move-object v1, p4

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gki:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gki:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    :cond_7
    return-void

    .line 112
    :cond_8
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->app()Lcom/tencent/mm/pluginsdk/ah;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "MicroMsg.AppInfoLogic"

    const-string v1, "getISubCorePluginBase() == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->app()Lcom/tencent/mm/pluginsdk/ah;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/tencent/mm/pluginsdk/ah;->qf(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v0

    if-eqz v0, :cond_a

    iget v6, v0, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appVersion:I

    if-ge v6, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_9
    if-eqz v1, :cond_b

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->app()Lcom/tencent/mm/pluginsdk/ah;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/tencent/mm/pluginsdk/ah;->qg(Ljava/lang/String;)V

    :cond_b
    move-object v1, v0

    goto/16 :goto_3

    :cond_c
    move v1, v5

    goto :goto_9

    .line 117
    :cond_d
    iget-object v0, v1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    goto/16 :goto_4

    .line 125
    :cond_e
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dkS:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {p3, v0, v3}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 129
    :cond_f
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dkS:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 135
    :cond_10
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gKg:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->gKg:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/tencent/mm/j/b;->bXF:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/kk;->wG(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/kk;

    move-result-object v3

    invoke-static {p3, v0, v3}, Lcom/tencent/mm/ui/chatting/cj;->b(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 142
    :pswitch_0
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dmn:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 144
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v0, v3, v6}, Lcom/tencent/mm/w/g;->b(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_11

    .line 146
    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/j;->dmn:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 148
    :cond_11
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dmn:Landroid/widget/ImageView;

    const v3, 0x7f0200a9

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 151
    :cond_12
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/j;->dmn:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02059e

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    :cond_13
    move-object v2, v4

    goto/16 :goto_2

    :cond_14
    move-object v0, v1

    goto/16 :goto_0

    :cond_15
    move-object v0, v1

    goto/16 :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 177
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 178
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 179
    const-string v1, "favorite"

    invoke-static {v1}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const/16 v1, 0x74

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f070a4c

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/app/s;->qs(Ljava/lang/String;)I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v2

    .line 185
    iget v3, v2, Lcom/tencent/mm/j/b;->cgC:I

    if-lez v3, :cond_1

    iget v3, v2, Lcom/tencent/mm/j/b;->cgC:I

    if-lez v3, :cond_2

    if-lt v1, v6, :cond_2

    .line 186
    :cond_1
    iget-object v1, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->j(Lcom/tencent/mm/pluginsdk/model/app/k;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v6, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 196
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return v4

    .line 205
    :sswitch_0
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const/4 v0, 0x0

    .line 208
    if-eqz v1, :cond_1

    .line 209
    invoke-static {v1}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    .line 211
    :cond_1
    if-eqz v0, :cond_2

    .line 212
    iget-object v1, v0, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/app/s;->qr(Ljava/lang/String;)V

    .line 214
    :cond_2
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mm/model/bv;->q(J)I

    .line 216
    iget-object v1, v0, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/model/app/k;->apQ()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-static {p2, v0, p3, v1}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/j/b;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/pluginsdk/model/app/k;)V

    goto :goto_0

    .line 224
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    const-string v1, "Retr_Msg_content"

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "Retr_Msg_Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v1, "Retr_Msg_Id"

    iget-wide v2, p3, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    invoke-virtual {p2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 239
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-static {p2}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 287
    :cond_0
    :goto_0
    return v8

    .line 245
    :cond_1
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_c

    .line 248
    invoke-static {v0}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    .line 251
    :goto_1
    if-nez v0, :cond_2

    .line 252
    const-string v0, "MicroMsg.ChattingItemAppMsgFromImg"

    const-string v1, "content is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/model/app/k;->apQ()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    invoke-static {p2, p3}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {p2, v0, v2, v1}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/j/b;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/model/app/k;)V

    .line 262
    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 263
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/b;->qk(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/a;->vN()Z

    move-result v1

    if-nez v1, :cond_5

    .line 266
    :cond_4
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v4, Lcom/tencent/mm/ui/chatting/AppAttachDownloadUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "app_msg_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    :cond_5
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    .line 271
    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/chatting/ResourcesExceedUI;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const-string v1, "clean_view_type"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 277
    :cond_6
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->AH()I

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    const-string v0, "MicroMsg.ChattingItemAppMsgFromImg"

    const-string v1, "showImg : imgPath is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const-class v4, Lcom/tencent/mm/ui/tools/ShowImageUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "key_favorite"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "key_image_path"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_message_id"

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cj;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 279
    :cond_9
    iget-object v1, v0, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 280
    iget-object v1, v0, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/tencent/mm/ui/chatting/cj;->ao(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 282
    iget-object v2, v0, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    const-string v4, "message"

    invoke-static {v2, v4, v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v0, v0, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/mm/ui/chatting/cj;->ad(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 284
    if-nez v0, :cond_a

    :goto_2
    if-nez v0, :cond_b

    move v4, v5

    :goto_3
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v6

    move-object v0, p2

    move-object v2, v1

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/ui/chatting/cj;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_2

    :cond_b
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_3

    :cond_c
    move-object v0, v3

    goto/16 :goto_1
.end method
