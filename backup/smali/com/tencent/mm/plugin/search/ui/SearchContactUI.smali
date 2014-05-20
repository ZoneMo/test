.class public Lcom/tencent/mm/plugin/search/ui/SearchContactUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/tools/w;


# instance fields
.field eho:Ljava/lang/String;

.field private eiA:Lcom/tencent/mm/plugin/search/ui/e;

.field private eiB:Z

.field eiC:I

.field eiD:Lcom/tencent/mm/plugin/search/model/af;

.field eiE:Lcom/tencent/mm/plugin/search/model/af;

.field eiF:Ljava/util/List;

.field eiG:Ljava/util/List;

.field eiH:Ljava/util/List;

.field private eiI:Lcom/tencent/mm/plugin/search/model/ad;

.field private eiJ:Lcom/tencent/mm/plugin/search/model/ad;

.field private eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

.field private eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

.field private eiz:Landroid/widget/ListView;

.field mHandler:Landroid/os/Handler;

.field private nU:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiD:Lcom/tencent/mm/plugin/search/model/af;

    .line 115
    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiE:Lcom/tencent/mm/plugin/search/model/af;

    .line 292
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/c;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/c;-><init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiI:Lcom/tencent/mm/plugin/search/model/ad;

    .line 313
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/d;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/d;-><init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiJ:Lcom/tencent/mm/plugin/search/model/ad;

    .line 328
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Lcom/tencent/mm/plugin/search/ui/e;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiA:Lcom/tencent/mm/plugin/search/ui/e;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->nU:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiz:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Lcom/tencent/mm/plugin/search/model/ad;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiJ:Lcom/tencent/mm/plugin/search/model/ad;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 151
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    .line 152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/high16 v1, 0x42c8

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->kj(I)V

    .line 157
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->arN()V

    .line 158
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;->setVisibility(I)V

    .line 159
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->aET()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->aET()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->aND()V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->a(Lcom/tencent/mm/pluginsdk/ui/tools/w;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiy:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->r(Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azT()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->cP(Z)V

    .line 169
    sget v0, Lcom/tencent/mm/i;->background:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->nU:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->nU:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/plugin/search/ui/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/search/ui/a;-><init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    sget v0, Lcom/tencent/mm/i;->aIy:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiz:Landroid/widget/ListView;

    .line 179
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/e;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/e;-><init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiA:Lcom/tencent/mm/plugin/search/ui/e;

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiA:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiz:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/search/ui/u;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/search/ui/u;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiz:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/search/ui/b;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/search/ui/b;-><init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    return-void
.end method

.method public final FT()Z
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->SM()V

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public final FU()V
    .locals 0

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->finish()V

    .line 248
    return-void
.end method

.method public final FV()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public final a(Z[Ljava/lang/String;JI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "VoiceSearchResultUI_Resultlist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VoiceSearchResultUI_VoiceId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VoiceSearchResultUI_ShowType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 280
    const-string v1, ".ui.voicesearch.VoiceSearchResultUI"

    invoke-static {p0, v1, v0}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "VoiceSearchResultUI_Resultlist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VoiceSearchResultUI_Error"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->aal()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/tencent/mm/n;->bmF:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VoiceSearchResultUI_VoiceId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VoiceSearchResultUI_ShowType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 287
    const-string v1, ".ui.voicesearch.VoiceSearchResultUI"

    invoke-static {p0, v1, v0}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final abb()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->SM()V

    .line 264
    return-void
.end method

.method public final abc()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 123
    sget v0, Lcom/tencent/mm/k;->aYY:I

    return v0
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiD:Lcom/tencent/mm/plugin/search/model/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiD:Lcom/tencent/mm/plugin/search/model/af;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/af;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiE:Lcom/tencent/mm/plugin/search/model/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiE:Lcom/tencent/mm/plugin/search/model/af;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->c(Lcom/tencent/mm/plugin/search/model/af;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiE:Lcom/tencent/mm/plugin/search/model/af;

    :cond_1
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eho:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiD:Lcom/tencent/mm/plugin/search/model/af;

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->nU:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiz:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiB:Z

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiI:Lcom/tencent/mm/plugin/search/model/ad;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/at;->a(Ljava/lang/String;ZLcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiD:Lcom/tencent/mm/plugin/search/model/af;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiB:Z

    .line 136
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiB:Z

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->Bj()Z

    move-result v3

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiB:Z

    .line 138
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->FR()V

    .line 141
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "from_tab_index"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 142
    packed-switch v0, :pswitch_data_0

    .line 145
    :pswitch_0
    iput v2, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiC:I

    .line 147
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 134
    goto :goto_0

    .line 143
    :pswitch_1
    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiC:I

    goto :goto_1

    .line 144
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiC:I

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->b(Landroid/support/v4/app/FragmentActivity;Landroid/view/Menu;)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 203
    invoke-static {}, Lcom/tencent/mm/p/ab;->yf()Lcom/tencent/mm/p/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/p/v;->ya()V

    .line 204
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->cancel()V

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->clearFocus()V

    .line 198
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eix:Lcom/tencent/mm/pluginsdk/ui/tools/u;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/ui/tools/u;->a(Landroid/support/v4/app/FragmentActivity;Landroid/view/Menu;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method
