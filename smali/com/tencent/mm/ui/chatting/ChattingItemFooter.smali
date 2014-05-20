.class public Lcom/tencent/mm/ui/chatting/ChattingItemFooter;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final gMS:[I

.field private static final gMT:[I


# instance fields
.field private dVs:Ljava/lang/String;

.field private ge:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->gMS:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->gMT:[I

    return-void

    .line 32
    :array_0
    .array-data 0x4
        0x36t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0x68t 0x6t 0x2t 0x7ft
        0x6ct 0x6t 0x2t 0x7ft
        0x71t 0x6t 0x2t 0x7ft
        0x6et 0x6t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->mContext:Landroid/content/Context;

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->ge:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method private a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    if-ge p1, p2, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->ge:Landroid/view/LayoutInflater;

    const v1, 0x7f030077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 143
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private b(Lcom/tencent/mm/p/h;)V
    .locals 4
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/tencent/mm/p/z;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->dVs:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/tencent/mm/p/h;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/p/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 153
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "ChattingItemFooter"

    const-string v1, "no menulist!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->setVisibility(I)V

    move v0, v3

    .line 131
    :goto_0
    return v0

    .line 82
    :cond_1
    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->dVs:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->getChildCount()I

    move-result v4

    .line 85
    if-eqz p3, :cond_3

    .line 86
    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->gMT:[I

    move-object v1, v0

    .line 91
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {v5, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    const/high16 v0, 0x3f80

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 94
    packed-switch v6, :pswitch_data_0

    .line 121
    :goto_2
    if-le v4, v6, :cond_2

    add-int/lit8 v0, v4, -0x1

    if-lez v0, :cond_2

    .line 126
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v6, v0}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->removeViews(II)V

    .line 129
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->setLongClickable(Z)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->setVisibility(I)V

    move v0, v2

    .line 131
    goto :goto_0

    .line 88
    :cond_3
    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->gMS:[I

    move-object v1, v0

    goto :goto_1

    .line 96
    :pswitch_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/h;

    .line 97
    invoke-direct {p0, v3, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v5

    .line 98
    iget-object v7, v0, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x3

    aget v0, v1, v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 103
    :pswitch_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/h;

    .line 104
    invoke-direct {p0, v2, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v7

    .line 105
    iget-object v8, v0, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 107
    aget v0, v1, v2

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 110
    :pswitch_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/h;

    .line 111
    invoke-direct {p0, v3, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v7

    .line 112
    iget-object v8, v0, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 114
    aget v0, v1, v3

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/h;

    .line 117
    add-int/lit8 v7, v6, -0x1

    invoke-direct {p0, v7, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v5

    .line 118
    iget-object v7, v0, Lcom/tencent/mm/p/h;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 120
    const/4 v0, 0x2

    aget v0, v1, v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 159
    instance-of v1, v0, Lcom/tencent/mm/p/h;

    if-nez v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 162
    :cond_0
    check-cast v0, Lcom/tencent/mm/p/h;

    .line 163
    iget v1, v0, Lcom/tencent/mm/p/h;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    const-string v1, "ChattingItemFooter"

    const-string v2, "get latest message"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/tencent/mm/p/h;->cnD:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/p/h;->cnI:Ljava/lang/String;

    .line 167
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->b(Lcom/tencent/mm/p/h;)V

    goto :goto_0

    .line 170
    :pswitch_1
    const-string v1, "ChattingItemFooter"

    const-string v2, "start webview url"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/tencent/mm/p/h;->cnD:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/p/h;->cnI:Ljava/lang/String;

    .line 172
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->b(Lcom/tencent/mm/p/h;)V

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    const-string v2, "rawUrl"

    iget-object v0, v0, Lcom/tencent/mm/p/h;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v0, "showShare"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v0, "geta8key_username"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->dVs:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
