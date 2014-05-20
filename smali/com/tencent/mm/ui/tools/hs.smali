.class final Lcom/tencent/mm/ui/tools/hs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private hnD:Landroid/widget/RadioButton;

.field private hnE:Landroid/widget/RadioButton;

.field private hnF:Landroid/widget/RadioButton;

.field private hnG:Landroid/widget/RadioButton;

.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3169
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hs;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3170
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/hs;->hnD:Landroid/widget/RadioButton;

    .line 3171
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/hs;->hnE:Landroid/widget/RadioButton;

    .line 3172
    iput-object p4, p0, Lcom/tencent/mm/ui/tools/hs;->hnF:Landroid/widget/RadioButton;

    .line 3173
    iput-object p5, p0, Lcom/tencent/mm/ui/tools/hs;->hnG:Landroid/widget/RadioButton;

    .line 3174
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3178
    if-eqz p2, :cond_1

    .line 3179
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3180
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hs;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->c(Lcom/tencent/mm/ui/tools/WebViewUI;I)V

    .line 3183
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hs;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/webview/stub/al;->HB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hs;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v4, 0x4000

    invoke-interface {v0, v4, v3}, Lcom/tencent/mm/plugin/webview/stub/al;->aK(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3197
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/hs;->hnD:Landroid/widget/RadioButton;

    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3198
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/hs;->hnE:Landroid/widget/RadioButton;

    const/4 v0, 0x2

    if-ne v3, v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3199
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/hs;->hnF:Landroid/widget/RadioButton;

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3200
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hs;->hnG:Landroid/widget/RadioButton;

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3202
    :cond_1
    return-void

    .line 3186
    :catch_0
    move-exception v0

    .line 3187
    const-string v4, "MicroMsg.WebViewUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onCheckedChanged, ex = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3197
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3198
    goto :goto_2

    :cond_4
    move v0, v2

    .line 3199
    goto :goto_3

    :cond_5
    move v1, v2

    .line 3200
    goto :goto_4
.end method
