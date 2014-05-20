.class final Lcom/tencent/mm/ui/chatting/fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/dm;


# instance fields
.field private dWX:J

.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gOe:Lcom/tencent/mm/ui/base/ce;

.field private gOf:Landroid/widget/TextView;

.field private gOg:Landroid/widget/ScrollView;

.field private final gOh:I

.field private gOi:I

.field private gOj:I

.field private gOk:I

.field private gOl:Z

.field private gOm:Z

.field private gps:Landroid/view/View$OnTouchListener;

.field private handler:Landroid/os/Handler;

.field private px:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 1102
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    .line 1103
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->px:Landroid/widget/TextView;

    .line 1104
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gOf:Landroid/widget/TextView;

    .line 1105
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gOg:Landroid/widget/ScrollView;

    .line 1107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/fg;->dWX:J

    .line 1111
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOh:I

    .line 1113
    iput v3, p0, Lcom/tencent/mm/ui/chatting/fg;->gOi:I

    .line 1125
    iput v3, p0, Lcom/tencent/mm/ui/chatting/fg;->gOj:I

    .line 1126
    iput v3, p0, Lcom/tencent/mm/ui/chatting/fg;->gOk:I

    .line 1127
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/fg;->gOl:Z

    .line 1128
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/fg;->gOm:Z

    .line 1138
    new-instance v0, Lcom/tencent/mm/ui/chatting/fh;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/fh;-><init>(Lcom/tencent/mm/ui/chatting/fg;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->handler:Landroid/os/Handler;

    .line 1152
    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gps:Landroid/view/View$OnTouchListener;

    .line 1156
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/fg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 1158
    const v0, 0x7f030089

    invoke-static {p1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1159
    const v0, 0x7f0a0219

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOg:Landroid/widget/ScrollView;

    .line 1160
    const v0, 0x7f0a021a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->px:Landroid/widget/TextView;

    .line 1161
    const v0, 0x7f0a0218

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOf:Landroid/widget/TextView;

    .line 1162
    new-instance v0, Lcom/tencent/mm/ui/chatting/fi;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/fi;-><init>(Lcom/tencent/mm/ui/chatting/fg;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gps:Landroid/view/View$OnTouchListener;

    .line 1197
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOg:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gps:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1198
    new-instance v0, Lcom/tencent/mm/ui/chatting/fj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/fj;-><init>(Lcom/tencent/mm/ui/chatting/fg;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    new-instance v0, Lcom/tencent/mm/ui/base/ce;

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;IIB)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    .line 1209
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    const v1, 0x7f0f01c1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setAnimationStyle(I)V

    .line 1210
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->update()V

    .line 1211
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0xffffff

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1212
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    new-instance v1, Lcom/tencent/mm/ui/chatting/fk;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/fk;-><init>(Lcom/tencent/mm/ui/chatting/fg;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/ce;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1217
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/fg;)I
    .locals 1
    .parameter

    .prologue
    .line 1094
    iget v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOj:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/fg;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1094
    iput p1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOj:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/fg;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1094
    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOl:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/fg;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1094
    iput p1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOk:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/fg;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/fg;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1094
    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOm:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/fg;)V
    .locals 2
    .parameter

    .prologue
    .line 1094
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/fg;->dWX:J

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/fg;)Z
    .locals 1
    .parameter

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOl:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/fg;)I
    .locals 1
    .parameter

    .prologue
    .line 1094
    iget v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOk:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/fg;)J
    .locals 4
    .parameter

    .prologue
    .line 1094
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FE()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/fg;->dWX:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/fg;)Z
    .locals 1
    .parameter

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOm:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/fg;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/fg;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1094
    iput v1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOj:I

    iput v1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOk:I

    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOl:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/fg;->gOm:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public final aj(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1222
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/chatting/kk;

    if-eqz v0, :cond_2

    .line 1223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 1224
    iget v2, v0, Lcom/tencent/mm/ui/chatting/kk;->dws:I

    if-nez v2, :cond_2

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1226
    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kk;->cad:Lcom/tencent/mm/storage/ak;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOg:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    move-object v0, p1

    .line 1230
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1231
    instance-of v2, v0, Landroid/text/SpannableString;

    if-eqz v2, :cond_0

    .line 1232
    check-cast v0, Landroid/text/SpannableString;

    .line 1233
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gOf:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gNr:Lcom/tencent/mm/ui/chatting/lm;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gOf:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/lm;->e(Landroid/widget/TextView;)V

    .line 1236
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOf:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1238
    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->SM()V

    .line 1239
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/fg;->px:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/fg;->gOe:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    .line 1243
    :cond_1
    const/4 v0, 0x1

    .line 1248
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
