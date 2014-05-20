.class final Lcom/tencent/mm/ui/chatting/kl;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field gMU:Landroid/widget/TextView;

.field gQQ:Landroid/widget/LinearLayout;

.field gQR:Landroid/widget/TextView;

.field gQS:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 157
    return-void
.end method

.method public static a(Lcom/tencent/mm/ui/chatting/kl;Lcom/tencent/mm/storage/ak;ZILcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 181
    if-nez p0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    if-eqz p2, :cond_6

    .line 187
    iget-object v0, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/kl;->gMy:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v1

    .line 194
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 195
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 196
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v0, v1

    .line 199
    :cond_1
    iget-boolean v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/kl;->gMy:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/kl;->gMy:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_2
    invoke-static {p4}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 208
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/kl;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/kl;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/kl;->cMS:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 214
    const-string v0, "location"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    const-string v0, "MicroMsg.LocationItemHolder"

    const-string v1, "plugin found!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/tencent/mm/c/a/dd;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dd;-><init>()V

    .line 217
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/mm/c/a/de;->bOi:I

    .line 218
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput-object p1, v1, Lcom/tencent/mm/c/a/de;->bLP:Lcom/tencent/mm/storage/ak;

    .line 219
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 220
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOh:Lcom/tencent/mm/c/a/df;

    iget-object v1, v1, Lcom/tencent/mm/c/a/df;->bOl:Ljava/lang/String;

    .line 221
    iget-object v0, v0, Lcom/tencent/mm/c/a/dd;->bOh:Lcom/tencent/mm/c/a/df;

    iget-object v0, v0, Lcom/tencent/mm/c/a/df;->bOm:Ljava/lang/String;

    .line 222
    if-nez v1, :cond_3

    invoke-static {v0, p4}, Lcom/tencent/mm/ui/chatting/kl;->a(Ljava/lang/String;Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "err_not_started"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 223
    :cond_4
    const-string v0, "MicroMsg.LocationItemHolder"

    const-string v1, "info error or subcore not started!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gQS:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    :goto_2
    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/kl;->gki:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gki:Landroid/view/View;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gki:Landroid/view/View;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 189
    :cond_6
    iget-object v0, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    goto/16 :goto_1

    .line 227
    :cond_7
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/kl;->gQS:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/kl;->gQQ:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    const-string v2, "MicroMsg.LocationItemHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location info : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v0, p4}, Lcom/tencent/mm/ui/chatting/kl;->a(Ljava/lang/String;Lcom/tencent/mm/ui/chatting/ChattingUI;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 232
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/kl;->gQR:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/kl;->gQR:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    if-eqz v1, :cond_8

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 242
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gQR:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070b0c

    invoke-virtual {p1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 162
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->dkq:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0a0205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gMU:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0a0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gQR:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0a0203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gQQ:Landroid/widget/LinearLayout;

    .line 166
    const v0, 0x7f0a0202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gQS:Landroid/widget/ProgressBar;

    .line 167
    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gki:Landroid/view/View;

    .line 168
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gMy:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->daW:Landroid/widget/CheckBox;

    .line 170
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->eyN:Landroid/view/View;

    .line 171
    if-eqz p2, :cond_1

    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/chatting/kl;->type:I

    .line 172
    if-nez p2, :cond_0

    .line 174
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/kl;->gKj:Landroid/widget/ImageView;

    .line 176
    :cond_0
    return-object p0

    .line 171
    :cond_1
    const/16 v0, 0x11

    goto :goto_0
.end method
