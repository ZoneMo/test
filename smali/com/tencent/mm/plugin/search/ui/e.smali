.class final Lcom/tencent/mm/plugin/search/ui/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static ejd:F


# instance fields
.field private dDT:Landroid/app/Dialog;

.field private ehA:Ljava/util/List;

.field private ehz:[Ljava/lang/String;

.field private eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

.field private eiM:Ljava/util/List;

.field private eiN:Ljava/lang/String;

.field private eiO:Ljava/util/HashMap;

.field private eiP:I

.field private eiQ:Ljava/util/List;

.field private eiR:I

.field private eiS:Ljava/util/List;

.field private eiT:I

.field private eiU:I

.field private eiV:I

.field private eiW:Ljava/util/List;

.field private eiX:I

.field private eiY:Ljava/util/List;

.field private eiZ:I

.field private eja:Ljava/util/List;

.field private ejb:Landroid/text/TextPaint;

.field private ejc:I

.field private eje:Landroid/widget/AdapterView$OnItemClickListener;

.field private ejf:Landroid/widget/AdapterView$OnItemClickListener;

.field private ejg:Landroid/widget/AdapterView$OnItemClickListener;

.field private ejh:Landroid/widget/AdapterView$OnItemClickListener;

.field private eji:Landroid/widget/AdapterView$OnItemClickListener;

.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/plugin/search/ui/e;->ejd:F

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x7fffffff

    .line 452
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1418
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/j;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/j;-><init>(Lcom/tencent/mm/plugin/search/ui/e;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eje:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1448
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/k;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/k;-><init>(Lcom/tencent/mm/plugin/search/ui/e;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejf:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1476
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/l;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/l;-><init>(Lcom/tencent/mm/plugin/search/ui/e;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejg:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1503
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/m;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/m;-><init>(Lcom/tencent/mm/plugin/search/ui/e;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejh:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1522
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/n;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/n;-><init>(Lcom/tencent/mm/plugin/search/ui/e;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eji:Landroid/widget/AdapterView$OnItemClickListener;

    .line 453
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    .line 454
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiM:Ljava/util/List;

    .line 455
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehA:Ljava/util/List;

    .line 456
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    .line 459
    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    .line 460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiS:Ljava/util/List;

    .line 461
    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiT:I

    .line 462
    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiU:I

    .line 463
    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    .line 464
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiW:Ljava/util/List;

    .line 465
    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiY:Ljava/util/List;

    .line 467
    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiZ:I

    .line 468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eja:Ljava/util/List;

    .line 470
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    .line 471
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/g;->aaO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 472
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/g;->aaO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejc:I

    .line 473
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/ui/e;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->dDT:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Ljava/util/List;I)Lcom/tencent/mm/plugin/search/ui/q;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x20003

    const v4, 0x20002

    .line 826
    new-instance v2, Lcom/tencent/mm/plugin/search/ui/q;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/search/ui/q;-><init>()V

    .line 827
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    move-object v0, v2

    .line 871
    :goto_0
    return-object v0

    .line 830
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/search/model/aq;

    .line 831
    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/q;->ejp:Lcom/tencent/mm/plugin/search/model/aq;

    .line 833
    iget v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    const/high16 v3, 0x2

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    const v3, 0x20001

    if-eq v1, v3, :cond_1

    iget v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    if-ne v1, v4, :cond_5

    .line 837
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    .line 838
    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/k;->tI(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 839
    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/k;->tN(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 841
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    .line 842
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/search/ui/e;->a(Lcom/tencent/mm/plugin/search/ui/q;Lcom/tencent/mm/plugin/search/model/aq;Ljava/lang/Object;)V

    .line 845
    iget v0, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    if-ne v0, v4, :cond_3

    .line 846
    iget-object v0, v2, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    .line 847
    iget-object v0, v0, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/q;->cnh:Ljava/lang/String;

    .line 851
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejg:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/q;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    .line 852
    iput-object v1, v2, Lcom/tencent/mm/plugin/search/ui/q;->data:Ljava/lang/Object;

    :cond_4
    :goto_1
    move-object v0, v2

    .line 871
    goto :goto_0

    .line 854
    :cond_5
    iget v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    if-eq v1, v5, :cond_6

    iget v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    const v3, 0x20004

    if-ne v1, v3, :cond_4

    .line 856
    :cond_6
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v1

    iget-wide v3, v0, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/modelfriend/i;->z(J)Lcom/tencent/mm/modelfriend/h;

    move-result-object v1

    .line 858
    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->getUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    .line 859
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/search/ui/e;->a(Lcom/tencent/mm/plugin/search/ui/q;Lcom/tencent/mm/plugin/search/model/aq;Ljava/lang/Object;)V

    .line 861
    iget v0, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    if-ne v0, v5, :cond_7

    .line 863
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eje:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/q;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    .line 868
    :goto_2
    iput-object v1, v2, Lcom/tencent/mm/plugin/search/ui/q;->data:Ljava/lang/Object;

    goto :goto_1

    .line 866
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejf:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/q;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    goto :goto_2
.end method

.method private a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 1066
    const/4 v5, -0x1

    .line 1070
    new-instance v0, Lcom/tencent/mm/plugin/search/ui/g;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/ui/g;-><init>(Lcom/tencent/mm/plugin/search/ui/e;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1077
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1078
    const/4 v4, 0x0

    .line 1079
    const/4 v3, 0x0

    .line 1080
    const/4 v2, 0x0

    .line 1081
    const/4 v1, 0x0

    .line 1083
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v12, v3

    move v3, v5

    move-object v5, v4

    move-object v4, v12

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/search/model/s;

    .line 1084
    iget v6, v0, Lcom/tencent/mm/plugin/search/model/s;->ehk:I

    if-eq v6, v3, :cond_6

    .line 1086
    if-eqz v5, :cond_0

    .line 1087
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejc:I

    invoke-static {v1, v5, v2}, Lcom/tencent/mm/ao/a;->a(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    .line 1088
    if-eqz v4, :cond_1

    .line 1089
    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1094
    :cond_0
    :goto_1
    iget v6, v0, Lcom/tencent/mm/plugin/search/model/s;->ehk:I

    .line 1095
    iget v9, v0, Lcom/tencent/mm/plugin/search/model/s;->ehm:I

    .line 1098
    aget-object v10, p2, v6

    .line 1099
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v11

    .line 1100
    invoke-static {v11, v10}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1103
    const/4 v2, 0x0

    .line 1104
    const/4 v1, 0x0

    .line 1105
    packed-switch v9, :pswitch_data_0

    :pswitch_0
    move-object v3, v4

    move-object v4, v5

    move v5, v6

    .line 1137
    :goto_2
    iget v6, v0, Lcom/tencent/mm/plugin/search/model/s;->ehn:I

    .line 1138
    iget-object v9, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    iget v10, v0, Lcom/tencent/mm/plugin/search/model/s;->ehl:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v6

    .line 1139
    if-eqz v2, :cond_2

    .line 1140
    const/4 v10, 0x0

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/model/s;->content:Ljava/lang/String;

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v10, v0, v1}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;ILjava/lang/String;Z)V

    move-object v12, v3

    move v3, v5

    move-object v5, v4

    move-object v4, v12

    goto :goto_0

    .line 1091
    :cond_1
    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1107
    :pswitch_1
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {v11}, Lcom/tencent/mm/storage/i;->rp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tencent/mm/plugin/search/model/SearchUtils;->am(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 1109
    goto :goto_2

    .line 1112
    :pswitch_2
    const/4 v1, 0x1

    .line 1114
    :pswitch_3
    const/4 v2, 0x1

    .line 1116
    :pswitch_4
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {v11}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 1118
    goto :goto_2

    .line 1121
    :pswitch_5
    const/4 v1, 0x1

    .line 1123
    :pswitch_6
    const/4 v2, 0x1

    .line 1125
    :pswitch_7
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1126
    const/4 v3, 0x0

    move v5, v6

    .line 1127
    goto :goto_2

    .line 1130
    :pswitch_8
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v0, Lcom/tencent/mm/plugin/search/model/s;->content:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 1131
    goto :goto_2

    .line 1142
    :cond_2
    invoke-direct {p0, v4, v6, v9}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;II)V

    move-object v12, v3

    move v3, v5

    move-object v5, v4

    move-object v4, v12

    .line 1143
    goto/16 :goto_0

    .line 1146
    :cond_3
    if-eqz v5, :cond_4

    .line 1147
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejc:I

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/ao/a;->a(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    .line 1148
    if-eqz v4, :cond_5

    .line 1149
    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1154
    :cond_4
    :goto_3
    return-object v7

    .line 1151
    :cond_5
    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_6
    move-object v12, v4

    move-object v4, v5

    move v5, v3

    move-object v3, v12

    goto/16 :goto_2

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private a(Landroid/text/SpannableString;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x21

    .line 1354
    if-lt p2, p3, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1355
    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 1356
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    if-le p3, v0, :cond_2

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p3

    .line 1358
    :cond_2
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aaH:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1359
    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1360
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1361
    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private a(Landroid/text/SpannableString;ILjava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1366
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1368
    invoke-virtual {p1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    move v0, v1

    .line 1372
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1373
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v3, v2

    move v2, v0

    .line 1376
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 1377
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/tencent/mm/platformtools/SpellMap;->j(C)Ljava/lang/String;

    move-result-object v6

    .line 1378
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 1380
    if-eqz p4, :cond_1

    .line 1381
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1385
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 1386
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1387
    add-int/2addr v0, p2

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;II)V

    .line 1394
    :cond_0
    return-void

    .line 1383
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2

    .line 1376
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 1372
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/ui/e;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 328
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    :goto_1
    new-instance v1, Lcom/tencent/mm/plugin/search/ui/h;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/plugin/search/ui/h;-><init>(Lcom/tencent/mm/plugin/search/ui/e;I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x6a

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelsimple/aj;

    invoke-direct {v0, p1}, Lcom/tencent/mm/modelsimple/aj;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v4, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v4, Lcom/tencent/mm/n;->bdi:I

    invoke-virtual {v3, v4}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/plugin/search/ui/i;

    invoke-direct {v5, p0, v0, v1}, Lcom/tencent/mm/plugin/search/ui/i;-><init>(Lcom/tencent/mm/plugin/search/ui/e;Lcom/tencent/mm/modelsimple/aj;Lcom/tencent/mm/n/m;)V

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->dDT:Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private a(Lcom/tencent/mm/plugin/search/ui/q;Lcom/tencent/mm/plugin/search/model/aq;Ljava/lang/Object;)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 876
    const/4 v6, 0x0

    .line 877
    const/4 v9, 0x0

    .line 878
    const/4 v5, 0x0

    .line 879
    const/4 v8, 0x0

    .line 880
    const/4 v7, 0x0

    .line 881
    const/4 v4, 0x0

    .line 882
    const/4 v3, 0x0

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 884
    const/4 v10, 0x0

    .line 885
    const/4 v2, 0x0

    .line 886
    const/4 v1, 0x0

    .line 889
    move-object/from16 v0, p3

    instance-of v11, v0, Lcom/tencent/mm/storage/i;

    if-eqz v11, :cond_2

    .line 890
    check-cast p3, Lcom/tencent/mm/storage/i;

    move-object/from16 v11, p3

    move-object/from16 p3, v2

    .line 895
    :goto_0
    if-eqz v11, :cond_6

    .line 897
    invoke-virtual {v11}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 900
    move-object/from16 v0, p2

    iget v2, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    const v13, 0x20001

    if-ne v2, v13, :cond_4

    .line 901
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v1

    invoke-virtual {v11}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/c;->tu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 903
    :goto_1
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "("

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ")"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejr:Ljava/lang/CharSequence;

    :cond_0
    move-object v2, v1

    .line 909
    :goto_2
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :pswitch_0
    move-object v1, v5

    move-object v2, v6

    :goto_3
    move v5, v7

    move-object v6, v1

    move v1, v8

    move-object v7, v9

    move-object v8, v2

    move-object v2, v10

    .line 993
    :goto_4
    if-eqz v2, :cond_b

    .line 995
    invoke-static {v2}, Lcom/tencent/mm/ao/a;->ti(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 996
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 999
    if-eqz v1, :cond_9

    .line 1001
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    array-length v1, v1

    if-ge v2, v1, :cond_9

    .line 1002
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1004
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/search/model/ar;

    .line 1005
    iget v1, v1, Lcom/tencent/mm/plugin/search/model/ar;->ehn:I

    .line 1006
    add-int v13, v1, v10

    .line 1008
    if-nez v4, :cond_7

    .line 1009
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v13}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;II)V

    goto :goto_6

    .line 891
    :cond_2
    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/tencent/mm/modelfriend/h;

    if-eqz v2, :cond_a

    .line 892
    check-cast p3, Lcom/tencent/mm/modelfriend/h;

    move-object v11, v10

    goto/16 :goto_0

    .line 902
    :cond_3
    sget-object v2, Lcom/tencent/mm/plugin/search/model/a;->egG:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 907
    :cond_4
    const-string v2, ""

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejr:Ljava/lang/CharSequence;

    move-object v2, v1

    goto :goto_2

    .line 912
    :pswitch_1
    const/4 v1, 0x1

    .line 914
    :goto_7
    const/4 v2, 0x1

    .line 916
    :goto_8
    const/4 v3, 0x1

    move v4, v2

    move-object v8, v6

    move-object v6, v5

    move-object v2, v10

    move v5, v7

    move-object v7, v9

    move/from16 v16, v1

    move v1, v3

    move/from16 v3, v16

    .line 917
    goto :goto_4

    .line 921
    :pswitch_2
    const/4 v3, 0x1

    .line 923
    :pswitch_3
    const/4 v4, 0x1

    .line 925
    :pswitch_4
    const/4 v1, 0x1

    .line 926
    invoke-virtual {v11}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v2

    .line 927
    sget v6, Lcom/tencent/mm/n;->bxO:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v2, v10

    move-object/from16 v16, v5

    move v5, v1

    move v1, v8

    move-object v8, v6

    move-object/from16 v6, v16

    .line 928
    goto/16 :goto_4

    .line 932
    :pswitch_5
    const/4 v2, 0x1

    .line 933
    invoke-virtual {v11}, Lcom/tencent/mm/storage/i;->rp()Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v11}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_5
    sget v6, Lcom/tencent/mm/n;->bxP:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    move v1, v8

    move-object v8, v6

    move-object v6, v5

    move v5, v2

    move-object v2, v10

    .line 936
    goto/16 :goto_4

    .line 940
    :pswitch_6
    const/4 v1, 0x1

    .line 941
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/model/aq;->content:Ljava/lang/String;

    .line 942
    sget v6, Lcom/tencent/mm/n;->bxN:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v2, v10

    move-object/from16 v16, v5

    move v5, v1

    move v1, v8

    move-object v8, v6

    move-object/from16 v6, v16

    .line 943
    goto/16 :goto_4

    .line 947
    :pswitch_7
    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->CE:Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->CE:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 948
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->CE:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 952
    sget v2, Lcom/tencent/mm/n;->bxM:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 957
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v10

    .line 959
    move-object/from16 v0, p2

    iget v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->ehm:I

    sparse-switch v1, :sswitch_data_0

    move v1, v8

    move-object v2, v10

    move-object v8, v6

    move-object v6, v5

    move v5, v7

    move-object v7, v9

    goto/16 :goto_4

    .line 962
    :sswitch_0
    const/4 v3, 0x1

    .line 964
    :sswitch_1
    const/4 v4, 0x1

    .line 966
    :sswitch_2
    const/4 v1, 0x1

    .line 967
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/modelfriend/h;->yS()Ljava/lang/String;

    move-result-object v2

    .line 968
    sget v6, Lcom/tencent/mm/n;->bxN:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    move-object v6, v5

    move v5, v7

    move-object v7, v2

    move-object v2, v10

    .line 969
    goto/16 :goto_4

    .line 973
    :sswitch_3
    const/4 v1, 0x1

    .line 974
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/modelfriend/h;->yS()Ljava/lang/String;

    move-result-object v2

    .line 975
    sget v6, Lcom/tencent/mm/n;->bxN:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v2, v10

    move-object/from16 v16, v5

    move v5, v1

    move v1, v8

    move-object v8, v6

    move-object/from16 v6, v16

    .line 976
    goto/16 :goto_4

    .line 980
    :sswitch_4
    const/4 v3, 0x1

    .line 982
    :sswitch_5
    const/4 v4, 0x1

    .line 984
    :sswitch_6
    const/4 v1, 0x1

    .line 985
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/modelfriend/h;->yP()Ljava/lang/String;

    move-result-object v2

    .line 986
    sget v6, Lcom/tencent/mm/n;->bxQ:I

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v2, v10

    move-object/from16 v16, v5

    move v5, v1

    move v1, v8

    move-object v8, v6

    move-object/from16 v6, v16

    goto/16 :goto_4

    .line 1011
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/tencent/mm/plugin/search/model/aq;->content:Ljava/lang/String;

    invoke-virtual {v15, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v1, v3}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;ILjava/lang/String;Z)V

    goto/16 :goto_6

    .line 1001
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_5

    .line 1017
    :cond_9
    sget v1, Lcom/tencent/mm/g;->aaO:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v2, v9, v1}, Lcom/tencent/mm/ao/a;->a(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    .line 1020
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejq:Ljava/lang/CharSequence;

    .line 1025
    :goto_9
    if-eqz v6, :cond_c

    .line 1026
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejs:Ljava/lang/CharSequence;

    .line 1063
    :cond_a
    :goto_a
    return-void

    .line 1022
    :cond_b
    const-string v1, ""

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejq:Ljava/lang/CharSequence;

    goto :goto_9

    .line 1027
    :cond_c
    if-eqz v7, :cond_10

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-static {v1}, Lcom/tencent/mm/ao/a;->ti(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1032
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1035
    if-eqz v5, :cond_f

    .line 1037
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 1040
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    array-length v1, v1

    if-ge v2, v1, :cond_f

    .line 1041
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1043
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/search/model/ar;

    .line 1045
    iget v1, v1, Lcom/tencent/mm/plugin/search/model/ar;->ehn:I

    .line 1046
    add-int v9, v1, v7

    .line 1048
    if-nez v4, :cond_d

    .line 1049
    add-int/2addr v1, v5

    add-int/2addr v9, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1, v9}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;II)V

    goto :goto_c

    .line 1051
    :cond_d
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/tencent/mm/plugin/search/model/aq;->content:Ljava/lang/String;

    invoke-virtual {v10, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v1, v3}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;ILjava/lang/String;Z)V

    goto :goto_c

    .line 1040
    :cond_e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b

    .line 1057
    :cond_f
    sget v1, Lcom/tencent/mm/g;->aaO:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v2, v6, v1}, Lcom/tencent/mm/ao/a;->a(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    .line 1060
    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejs:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 1062
    :cond_10
    const-string v1, ""

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/q;->ejs:Ljava/lang/CharSequence;

    goto/16 :goto_a

    :pswitch_8
    move v1, v3

    goto/16 :goto_7

    :pswitch_9
    move v1, v3

    move v2, v4

    goto/16 :goto_8

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 959
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/search/ui/e;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->dDT:Landroid/app/Dialog;

    return-object v0
.end method

.method private static b(Ljava/util/List;II)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    new-instance v1, Lcom/tencent/mm/plugin/search/ui/f;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/search/ui/f;-><init>()V

    .line 736
    new-instance v2, Lcom/tencent/mm/plugin/search/model/aq;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/search/model/aq;-><init>()V

    .line 737
    iput p1, v2, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    .line 738
    invoke-static {p0, v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 741
    if-ne p2, p1, :cond_0

    move v3, v0

    .line 749
    :goto_0
    if-gez v0, :cond_2

    .line 751
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 759
    :goto_1
    if-gez v3, :cond_4

    .line 760
    neg-int v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 768
    :goto_2
    invoke-interface {p0, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 744
    :cond_0
    iput p2, v2, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    .line 745
    invoke-static {p0, v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 754
    :cond_2
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_3

    .line 755
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/search/model/aq;

    iget v0, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    if-eq v0, p1, :cond_1

    .line 754
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 762
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 763
    add-int/lit8 v1, v3, 0x1

    :goto_3
    if-ge v1, v4, :cond_5

    .line 764
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/search/model/aq;

    iget v0, v0, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    if-ne v0, p2, :cond_5

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/search/ui/e;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/search/ui/e;)I
    .locals 1
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/search/ui/e;)I
    .locals 1
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/search/ui/e;)I
    .locals 1
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/search/ui/e;)I
    .locals 1
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiP:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/search/ui/e;)I
    .locals 1
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiU:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 478
    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 479
    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 480
    :cond_2
    if-nez p4, :cond_3

    const/4 v0, 0x0

    new-array p4, v0, [Ljava/lang/String;

    .line 482
    :cond_3
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiM:Ljava/util/List;

    .line 483
    iput-object p2, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehA:Ljava/util/List;

    .line 484
    iput-object p3, p0, Lcom/tencent/mm/plugin/search/ui/e;->eja:Ljava/util/List;

    .line 485
    iput-object p4, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiN:Ljava/lang/String;

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehA:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiQ:Ljava/util/List;

    .line 498
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiM:Ljava/util/List;

    const/high16 v1, 0x2

    const v2, 0x20004

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiS:Ljava/util/List;

    .line 500
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiM:Ljava/util/List;

    const v1, 0x20001

    const v2, 0x20001

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiW:Ljava/util/List;

    .line 502
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiM:Ljava/util/List;

    const v1, 0x20002

    const v2, 0x20002

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiY:Ljava/util/List;

    .line 507
    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 510
    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiP:I

    .line 516
    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 518
    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    .line 526
    :goto_4
    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiT:I

    .line 527
    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiU:I

    .line 528
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_5

    .line 529
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "^[0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 531
    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiU:I

    move v0, v1

    .line 539
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 540
    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    .line 547
    :goto_6
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 548
    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    .line 555
    :goto_7
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eja:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 556
    const v1, 0x7fffffff

    iput v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiZ:I

    .line 562
    :goto_8
    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->mCount:I

    .line 565
    if-eqz p5, :cond_6

    .line 566
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    iget v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v3, Lcom/tencent/mm/n;->bxL:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    iget v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v3, Lcom/tencent/mm/n;->bxJ:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    iget v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v3, Lcom/tencent/mm/n;->bxI:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    iget v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v3, Lcom/tencent/mm/n;->bxH:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    iget v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v3, Lcom/tencent/mm/n;->bxK:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 576
    :goto_9
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/search/ui/o;

    iget-object v4, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v5, Lcom/tencent/mm/n;->bxG:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/mm/h;->aie:I

    iget-object v6, p0, Lcom/tencent/mm/plugin/search/ui/e;->eji:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/mm/plugin/search/ui/o;-><init>(Ljava/lang/String;ILandroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/plugin/search/ui/o;

    iget-object v4, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v5, Lcom/tencent/mm/n;->bxF:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/tencent/mm/h;->aie:I

    iget-object v5, p0, Lcom/tencent/mm/plugin/search/ui/e;->eji:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {v3, v0, v4, v5}, Lcom/tencent/mm/plugin/search/ui/o;-><init>(Ljava/lang/String;ILandroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/ui/e;->notifyDataSetChanged()V

    .line 586
    return-void

    .line 492
    :cond_7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiN:Ljava/lang/String;

    goto/16 :goto_1

    .line 496
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehA:Ljava/util/List;

    goto/16 :goto_2

    .line 513
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiP:I

    .line 514
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x0

    goto/16 :goto_3

    .line 521
    :cond_a
    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    .line 522
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_4

    .line 532
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "^[A-Za-z0-9\\-_]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 534
    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiT:I

    move v0, v1

    goto/16 :goto_5

    .line 542
    :cond_c
    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    .line 543
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_6

    .line 550
    :cond_d
    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    .line 551
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_7

    .line 558
    :cond_e
    iput v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiZ:I

    .line 559
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eja:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_8

    .line 575
    :cond_f
    const-string v0, ""

    goto/16 :goto_9
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->mCount:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 595
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 600
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 610
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiP:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiZ:I

    if-ne p1, v0, :cond_1

    .line 615
    :cond_0
    const/4 v0, 0x2

    .line 621
    :goto_0
    return v0

    .line 616
    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiT:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiU:I

    if-ne p1, v0, :cond_3

    .line 618
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 619
    :cond_3
    iget v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiZ:I

    if-le p1, v0, :cond_4

    .line 620
    const/4 v0, 0x1

    goto :goto_0

    .line 621
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    if-nez p2, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/search/ui/e;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v1, Lcom/tencent/mm/k;->aZb:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/search/ui/r;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/search/ui/r;-><init>()V

    sget v0, Lcom/tencent/mm/i;->amX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/r;->cMS:Landroid/widget/ImageView;

    sget v0, Lcom/tencent/mm/i;->aCQ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/r;->cPP:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->apc:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/r;->eju:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->axN:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/r;->dle:Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/mm/p/ab;->yf()Lcom/tencent/mm/p/v;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/p/v;->a(Lcom/tencent/mm/p/w;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    move-object p2, v0

    .line 629
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 630
    instance-of v1, v0, Lcom/tencent/mm/plugin/search/ui/r;

    if-eqz v1, :cond_f

    .line 632
    check-cast v0, Lcom/tencent/mm/plugin/search/ui/r;

    .line 634
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 635
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/tencent/mm/plugin/search/ui/q;

    if-nez v2, :cond_b

    .line 637
    :cond_1
    const/4 v1, 0x0

    .line 638
    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    if-le p1, v2, :cond_7

    .line 639
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiY:Ljava/util/List;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiX:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->a(Ljava/util/List;I)Lcom/tencent/mm/plugin/search/ui/q;

    move-result-object v1

    .line 648
    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 650
    const-string v0, "MicroMsg.SearchContactUI"

    const-string v1, "Failed generating list item, pos = %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    const/4 p2, 0x0

    .line 722
    :cond_3
    :goto_2
    return-object p2

    .line 627
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v1, Lcom/tencent/mm/k;->aZc:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, -0x1

    invoke-static {v2, v0, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    const/4 v2, -0x2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    new-instance v2, Lcom/tencent/mm/plugin/search/ui/w;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/search/ui/w;-><init>()V

    sget v0, Lcom/tencent/mm/i;->amX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/w;->cMS:Landroid/widget/ImageView;

    sget v0, Lcom/tencent/mm/i;->aCQ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/w;->cPP:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->aCi:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/w;->dle:Landroid/widget/TextView;

    sget v0, Lcom/tencent/mm/i;->aNX:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/w;->dkq:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v1, Lcom/tencent/mm/k;->aZa:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/search/ui/t;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/search/ui/t;-><init>()V

    sget v0, Lcom/tencent/mm/i;->aoZ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/t;->ejw:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    sget v1, Lcom/tencent/mm/k;->aYZ:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/search/ui/p;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/search/ui/p;-><init>()V

    sget v0, Lcom/tencent/mm/i;->awj:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/p;->daU:Landroid/widget/ImageView;

    sget v0, Lcom/tencent/mm/i;->aCQ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/search/ui/p;->dMc:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 640
    :cond_7
    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    if-le p1, v2, :cond_8

    .line 641
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiW:Ljava/util/List;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiV:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->a(Ljava/util/List;I)Lcom/tencent/mm/plugin/search/ui/q;

    move-result-object v1

    goto/16 :goto_1

    .line 642
    :cond_8
    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    if-le p1, v2, :cond_9

    .line 643
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiS:Ljava/util/List;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiR:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->a(Ljava/util/List;I)Lcom/tencent/mm/plugin/search/ui/q;

    move-result-object v1

    goto/16 :goto_1

    .line 644
    :cond_9
    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiP:I

    if-le p1, v2, :cond_2

    .line 645
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiQ:Ljava/util/List;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiP:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/plugin/search/ui/e;->a(Ljava/util/List;I)Lcom/tencent/mm/plugin/search/ui/q;

    move-result-object v1

    goto/16 :goto_1

    .line 654
    :cond_a
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    :goto_3
    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    .line 660
    iget-object v2, v1, Lcom/tencent/mm/plugin/search/ui/q;->ejp:Lcom/tencent/mm/plugin/search/model/aq;

    iget v2, v2, Lcom/tencent/mm/plugin/search/model/aq;->type:I

    const v3, 0x20002

    if-ne v2, v3, :cond_d

    .line 661
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    iget-object v2, v2, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/mm/plugin/search/ui/r;->ejt:Lcom/tencent/mm/plugin/search/ui/q;

    iget-object v3, v3, Lcom/tencent/mm/plugin/search/ui/q;->cnh:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/p/u;->E(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, v0, Lcom/tencent/mm/plugin/search/ui/r;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 667
    :goto_4
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/r;->cPP:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/search/ui/q;->ejq:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/r;->eju:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/search/ui/q;->ejr:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/r;->dle:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/ui/q;->ejs:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 656
    :cond_b
    check-cast v1, Lcom/tencent/mm/plugin/search/ui/q;

    goto :goto_3

    .line 661
    :cond_c
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/r;->cMS:Landroid/widget/ImageView;

    sget v3, Lcom/tencent/mm/h;->acW:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 662
    :cond_d
    iget-object v2, v1, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 663
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/r;->cMS:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/search/ui/q;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_4

    .line 665
    :cond_e
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/r;->cMS:Landroid/widget/ImageView;

    sget v3, Lcom/tencent/mm/h;->adI:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 671
    :cond_f
    instance-of v1, v0, Lcom/tencent/mm/plugin/search/ui/w;

    if-eqz v1, :cond_21

    .line 673
    check-cast v0, Lcom/tencent/mm/plugin/search/ui/w;

    .line 675
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 676
    if-eqz v1, :cond_10

    instance-of v2, v1, Lcom/tencent/mm/plugin/search/ui/v;

    if-nez v2, :cond_1f

    .line 677
    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eja:Ljava/util/List;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiZ:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    if-eqz v0, :cond_11

    iget-object v3, v0, Lcom/tencent/mm/plugin/search/ui/w;->cPP:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    if-nez v1, :cond_12

    :cond_11
    const/4 v1, 0x0

    .line 679
    :goto_5
    if-nez v1, :cond_1e

    .line 681
    const-string v0, "MicroMsg.SearchContactUI"

    const-string v1, "Failed generating list item, pos = %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    const/4 p2, 0x0

    goto/16 :goto_2

    .line 677
    :cond_12
    new-instance v6, Lcom/tencent/mm/plugin/search/ui/v;

    invoke-direct {v6}, Lcom/tencent/mm/plugin/search/ui/v;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_13

    move-object v1, v6

    goto :goto_5

    :cond_13
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/search/model/aq;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_5

    :cond_14
    iput-object v1, v6, Lcom/tencent/mm/plugin/search/ui/v;->ejp:Lcom/tencent/mm/plugin/search/model/aq;

    iget-object v2, v1, Lcom/tencent/mm/plugin/search/model/aq;->eid:Ljava/lang/String;

    iput-object v2, v6, Lcom/tencent/mm/plugin/search/ui/v;->username:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/w;->cPP:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v3, v6, Lcom/tencent/mm/plugin/search/ui/v;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/plugin/search/ui/w;->cPP:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iput-object v2, v6, Lcom/tencent/mm/plugin/search/ui/v;->ejq:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    iget-wide v3, v1, Lcom/tencent/mm/plugin/search/model/aq;->eic:J

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    iget-object v3, v6, Lcom/tencent/mm/plugin/search/ui/v;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v2}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_15
    iget-object v3, v0, Lcom/tencent/mm/plugin/search/ui/w;->dle:Landroid/widget/TextView;

    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/ao/a;->ti(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getResources()Landroid/content/res/Resources;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejc:I

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v3, v5, v2}, Lcom/tencent/mm/ao/d;->a(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v3, v5, v2}, Lcom/tencent/mm/ao/a;->a(Landroid/content/Context;Landroid/text/SpannableString;I)Landroid/text/SpannableString;

    sget v2, Lcom/tencent/mm/plugin/search/ui/e;->ejd:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcom/tencent/mm/plugin/search/ui/e;->ejd:F

    :cond_16
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    iget-object v2, v1, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    array-length v2, v2

    if-ge v3, v2, :cond_18

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->ehz:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v2, v1, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/plugin/search/model/ar;

    iget v2, v2, Lcom/tencent/mm/plugin/search/model/ar;->ehn:I

    add-int v10, v2, v4

    invoke-direct {p0, v5, v2, v10}, Lcom/tencent/mm/plugin/search/ui/e;->a(Landroid/text/SpannableString;II)V

    goto :goto_7

    :cond_17
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_18
    iget-object v2, v1, Lcom/tencent/mm/plugin/search/model/aq;->eig:[Ljava/util/List;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/plugin/search/model/ar;

    iget v4, v2, Lcom/tencent/mm/plugin/search/model/ar;->ehn:I

    iget v3, v2, Lcom/tencent/mm/plugin/search/model/ar;->dKv:I

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-le v3, v2, :cond_19

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v3

    :cond_19
    if-le v4, v3, :cond_25

    move v2, v3

    :goto_8
    iget-object v4, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    iget-object v9, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    invoke-virtual {v9, v5, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    iget-object v10, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v10, v5, v3, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    add-float v10, v4, v9

    add-float/2addr v10, v7

    int-to-float v11, v8

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1a

    move-object v2, v5

    :goto_9
    iput-object v2, v6, Lcom/tencent/mm/plugin/search/ui/v;->ejs:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiL:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-wide v3, v1, Lcom/tencent/mm/plugin/search/model/aq;->timestamp:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/mm/pluginsdk/e/e;->b(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v6, Lcom/tencent/mm/plugin/search/ui/v;->ejx:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejh:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v1, v6, Lcom/tencent/mm/plugin/search/ui/v;->ejo:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, v6

    goto/16 :goto_5

    :cond_1a
    add-float v10, v4, v9

    sget v11, Lcom/tencent/mm/plugin/search/ui/e;->ejd:F

    add-float/2addr v10, v11

    int-to-float v11, v8

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1b

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const/4 v7, 0x0

    invoke-direct {v2, v5, v7, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    int-to-float v7, v8

    sub-float v4, v7, v4

    sub-float/2addr v4, v9

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v3, v7}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v5, v4, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_9

    :cond_1b
    sget v4, Lcom/tencent/mm/plugin/search/ui/e;->ejd:F

    add-float/2addr v4, v9

    add-float/2addr v4, v7

    int-to-float v10, v8

    cmpg-float v4, v4, v10

    if-gez v4, :cond_1c

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    int-to-float v4, v8

    sub-float/2addr v4, v9

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v8, v4, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v3, v5, v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object v2, v3

    goto :goto_9

    :cond_1c
    sget v4, Lcom/tencent/mm/plugin/search/ui/e;->ejd:F

    add-float/2addr v4, v9

    sget v7, Lcom/tencent/mm/plugin/search/ui/e;->ejd:F

    add-float/2addr v4, v7

    int-to-float v7, v8

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_1d

    invoke-virtual {v5, v2, v3}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    int-to-float v4, v8

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_9

    :cond_1d
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    int-to-float v7, v8

    sub-float/2addr v7, v9

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v2}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v5, v3, v9}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v8, v10, v7, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v5, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->ejb:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v9, v2, v7, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v2, v4

    goto/16 :goto_9

    .line 685
    :cond_1e
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :goto_a
    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/w;->ejy:Lcom/tencent/mm/plugin/search/ui/v;

    .line 691
    iget-object v2, v1, Lcom/tencent/mm/plugin/search/ui/v;->username:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/tencent/mm/plugin/search/ui/v;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 692
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/w;->cMS:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/search/ui/v;->username:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 695
    :goto_b
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/w;->cPP:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/search/ui/v;->ejq:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/w;->dle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/search/ui/v;->ejs:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/w;->dkq:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/ui/v;->ejx:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 687
    :cond_1f
    check-cast v1, Lcom/tencent/mm/plugin/search/ui/v;

    goto :goto_a

    .line 694
    :cond_20
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/w;->cMS:Landroid/widget/ImageView;

    sget v3, Lcom/tencent/mm/h;->afI:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 699
    :cond_21
    instance-of v1, v0, Lcom/tencent/mm/plugin/search/ui/t;

    if-eqz v1, :cond_24

    .line 702
    check-cast v0, Lcom/tencent/mm/plugin/search/ui/t;

    .line 703
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_22

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_22

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23

    .line 705
    :cond_22
    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/t;->ejw:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 707
    :cond_23
    iget-object v1, v0, Lcom/tencent/mm/plugin/search/ui/t;->ejw:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, v0, Lcom/tencent/mm/plugin/search/ui/t;->ejw:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 710
    :cond_24
    instance-of v1, v0, Lcom/tencent/mm/plugin/search/ui/p;

    if-eqz v1, :cond_3

    .line 712
    check-cast v0, Lcom/tencent/mm/plugin/search/ui/p;

    .line 713
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/e;->eiO:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 714
    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/tencent/mm/plugin/search/ui/o;

    if-eqz v2, :cond_3

    .line 715
    check-cast v1, Lcom/tencent/mm/plugin/search/ui/o;

    .line 716
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/p;->dMc:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/tencent/mm/plugin/search/ui/o;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v2, v0, Lcom/tencent/mm/plugin/search/ui/p;->daU:Landroid/widget/ImageView;

    iget v3, v1, Lcom/tencent/mm/plugin/search/ui/o;->iconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 718
    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/p;->ejn:Lcom/tencent/mm/plugin/search/ui/o;

    goto/16 :goto_2

    :cond_25
    move v2, v4

    goto/16 :goto_8
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x4

    return v0
.end method
