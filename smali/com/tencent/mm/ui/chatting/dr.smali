.class Lcom/tencent/mm/ui/chatting/dr;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gMW:I

.field private gMX:I

.field private gMY:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 39
    iput v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMW:I

    .line 40
    iput v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMX:I

    .line 41
    iput v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMY:I

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dr;->dws:I

    if-eq v0, v1, :cond_1

    .line 50
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f03008c

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 51
    new-instance v0, Lcom/tencent/mm/ui/chatting/lx;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dr;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/lx;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tencent/mm/ui/chatting/lx;->c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMW:I

    .line 53
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMX:I

    .line 54
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd7

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMY:I

    .line 56
    :cond_1
    return-object p2
.end method

.method public a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 61
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/dr;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    move-object v1, p1

    .line 62
    check-cast v1, Lcom/tencent/mm/ui/chatting/lx;

    .line 66
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 68
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 70
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->dSt:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    :goto_0
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->fng:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    const v2, 0x12000031

    if-ne v0, v2, :cond_2

    .line 78
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-static {v0, p3}, Lcom/tencent/mm/ui/chatting/ks;->a(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 83
    :goto_1
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    invoke-static {p3}, Lcom/tencent/mm/ui/chatting/dr;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 85
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    iget-object v3, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->cMS:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    iget-boolean v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    invoke-static {p4, v0, p2}, Lcom/tencent/mm/ui/chatting/kk;->a(Lcom/tencent/mm/storage/ak;ZI)Lcom/tencent/mm/ui/chatting/kk;

    move-result-object v0

    .line 91
    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/base/MMTextView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget-object v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget-object v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 94
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget-object v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->gNA:Lcom/tencent/mm/ui/chatting/fg;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/MMTextView;->a(Lcom/tencent/mm/ui/base/dm;)V

    .line 96
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    iget-boolean v4, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v5, v0, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    move v0, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/dr;->a(ILcom/tencent/mm/ui/chatting/cf;Lcom/tencent/mm/storage/ak;Ljava/lang/String;ZLcom/tencent/mm/ui/chatting/ez;)V

    .line 98
    iget v0, v1, Lcom/tencent/mm/ui/chatting/lx;->gMz:I

    if-ne v6, v0, :cond_3

    move v0, v6

    :goto_2
    sget-object v2, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    iget-object v2, v2, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->cfm:Landroid/content/res/Resources;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tencent/mm/compatible/loader/g;->cff:Lcom/tencent/mm/compatible/loader/PluginResourceLoader;

    iget-object v2, v2, Lcom/tencent/mm/compatible/loader/PluginResourceLoader;->cfm:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/tencent/mm/ui/chatting/dr;->gMW:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/mm/ui/chatting/dr;->gMY:I

    :goto_3
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMY:I

    iget v2, p0, Lcom/tencent/mm/ui/chatting/dr;->gMX:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/ui/chatting/dr;->gMY:I

    .line 99
    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dr;->gMY:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMTextView;->setMaxWidth(I)V

    .line 100
    return-void

    .line 72
    :cond_1
    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/lx;->dSt:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 80
    :cond_2
    iget-object v0, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gNr:Lcom/tencent/mm/ui/chatting/lm;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/lx;->gRC:Lcom/tencent/mm/ui/base/MMTextView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/lm;->e(Landroid/widget/TextView;)V

    goto/16 :goto_1

    :cond_3
    move v0, v7

    .line 98
    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/tencent/mm/ui/chatting/dr;->gMW:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/mm/ui/chatting/dr;->gMY:I

    goto :goto_3
.end method

.method public a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aBW()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 117
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 119
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/16 v1, 0x66

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 122
    :cond_1
    const/16 v1, 0x6c

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 123
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 124
    const/16 v1, 0x67

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 126
    :cond_2
    const-string v1, "favorite"

    invoke-static {v1}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const/16 v1, 0x74

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070a4c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    :cond_3
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->aCc()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/mm/p/p;->xI()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dr;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_4

    .line 131
    const/16 v1, 0x72

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070266

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dr;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_5

    .line 134
    const/16 v1, 0x64

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 139
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method
