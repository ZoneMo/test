.class public Lcom/tencent/mm/ui/conversation/s;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/ar;


# static fields
.field private static gYk:J


# instance fields
.field private cIs:Ljava/lang/String;

.field protected cKz:Ljava/util/List;

.field protected cPK:Lcom/tencent/mm/ui/base/dc;

.field protected cPL:Lcom/tencent/mm/ui/base/cy;

.field protected cPM:Lcom/tencent/mm/ui/base/db;

.field protected cPN:Lcom/tencent/mm/ui/base/cz;

.field eAA:Z

.field private gXT:[Landroid/content/res/ColorStateList;

.field private gXU:Ljava/util/HashMap;

.field private gXV:Z

.field private gXW:Lcom/tencent/mm/ui/conversation/z;

.field private gXX:Landroid/graphics/Typeface;

.field private gXY:F

.field private gXZ:F

.field private gYa:Lcom/tencent/mm/pluginsdk/ui/e;

.field private gYb:Z

.field private gYc:Z

.field private gYd:Z

.field private gYe:Z

.field private gYf:Lcom/tencent/mm/ui/conversation/w;

.field private gYg:Lcom/tencent/mm/sdk/b/g;

.field private gYh:Lcom/tencent/mm/ui/conversation/v;

.field public gYi:Ljava/lang/String;

.field final gYj:Lcom/tencent/mm/ui/conversation/y;

.field private gYl:Z

.field private gYm:Lcom/tencent/mm/sdk/platformtools/ay;

.field private gpY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1235
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/tencent/mm/ui/conversation/s;->gYk:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/bd;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 221
    new-instance v0, Lcom/tencent/mm/storage/n;

    invoke-direct {v0}, Lcom/tencent/mm/storage/n;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 84
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->cKz:Ljava/util/List;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    .line 87
    iput-boolean v4, p0, Lcom/tencent/mm/ui/conversation/s;->gXV:Z

    .line 91
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gpY:Z

    .line 95
    invoke-static {}, Lcom/tencent/mm/ui/base/MMSlideDelView;->aHp()Lcom/tencent/mm/ui/base/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->cPN:Lcom/tencent/mm/ui/base/cz;

    .line 99
    iput v2, p0, Lcom/tencent/mm/ui/conversation/s;->gXY:F

    .line 100
    iput v2, p0, Lcom/tencent/mm/ui/conversation/s;->gXZ:F

    .line 114
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYb:Z

    .line 115
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYc:Z

    .line 117
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYd:Z

    .line 119
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYe:Z

    .line 134
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYg:Lcom/tencent/mm/sdk/b/g;

    .line 135
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYh:Lcom/tencent/mm/ui/conversation/v;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYi:Ljava/lang/String;

    .line 529
    new-instance v0, Lcom/tencent/mm/ui/conversation/y;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/y;-><init>(Lcom/tencent/mm/ui/conversation/s;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYj:Lcom/tencent/mm/ui/conversation/y;

    .line 530
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->eAA:Z

    .line 1236
    iput-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYl:Z

    .line 1237
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/conversation/t;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/conversation/t;-><init>(Lcom/tencent/mm/ui/conversation/s;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYm:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 222
    invoke-super {p0, p2}, Lcom/tencent/mm/ui/bc;->a(Lcom/tencent/mm/ui/bd;)V

    .line 224
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c002e

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v3

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c0106

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v4

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    const v2, 0x7f0c002b

    invoke-static {p1, v2}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c0103

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v5

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const v1, 0x7f0c0103

    invoke-static {p1, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v5

    .line 229
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x4

    const v2, 0x7f0c0030

    invoke-static {p1, v2}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v0, v1

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXY:F

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXZ:F

    .line 236
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXX:Landroid/graphics/Typeface;

    .line 258
    return-void
.end method

.method private a(Lcom/tencent/mm/storage/n;IZ)Ljava/lang/CharSequence;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x21

    const v7, -0x54fbfc

    const v5, 0x7f0702a6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1083
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_editingMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/tencent/mm/storage/n;->field_atCount:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/tencent/mm/storage/n;->field_unReadCount:I

    if-gtz v0, :cond_1

    .line 1084
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v2, 0x7f0701aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1085
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1086
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/tencent/mm/storage/n;->field_editingMsg:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/tencent/mm/ao/b;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1174
    :goto_0
    return-object v0

    .line 1091
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1095
    const-string v0, "qqmail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    .line 1097
    :goto_1
    if-nez v0, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1096
    goto :goto_1

    .line 1103
    :cond_3
    const-string v0, "tmessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1104
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v4, "@t.qq.com"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 1106
    :goto_2
    if-nez v0, :cond_5

    .line 1107
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v3

    .line 1105
    goto :goto_2

    .line 1112
    :cond_5
    const-string v0, "qmessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1113
    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    .line 1114
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move v0, v2

    .line 1115
    :goto_3
    if-nez v0, :cond_7

    .line 1116
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v3

    .line 1114
    goto :goto_3

    .line 1122
    :cond_7
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_msgType:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_msgType:Ljava/lang/String;

    const-string v1, "47"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_msgType:Ljava/lang/String;

    const-string v1, "1048625"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1124
    :cond_8
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/s;->xb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    const-string v0, ""

    .line 1126
    if-eqz v1, :cond_9

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1128
    :cond_9
    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1130
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1131
    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1132
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/s;->xb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    if-eqz v1, :cond_b

    .line 1135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1139
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v4, 0x7f0709e8

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v0, v1

    :goto_4
    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    .line 1144
    :cond_c
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1145
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1146
    iget v0, p1, Lcom/tencent/mm/storage/n;->field_isSend:I

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/model/w;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    :goto_5
    :try_start_0
    iget-object v1, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1164
    :goto_6
    iget v1, p1, Lcom/tencent/mm/storage/n;->field_atCount:I

    if-lez v1, :cond_11

    iget v1, p1, Lcom/tencent/mm/storage/n;->field_unReadCount:I

    if-lez v1, :cond_11

    .line 1165
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v4, 0x7f0701ac

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1166
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1167
    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    invoke-static {v3, v0, p2}, Lcom/tencent/mm/ao/b;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    .line 1168
    goto/16 :goto_0

    .line 1141
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1146
    :cond_e
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1153
    :cond_f
    iget-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    goto :goto_6

    .line 1150
    :catch_0
    move-exception v0

    .line 1156
    :cond_10
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rO()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rR()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/ui/conversation/s;->iM(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    invoke-static {v0, v1, v4, v5, v6}, Lcom/tencent/mm/booter/w;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1170
    :cond_11
    if-eqz p3, :cond_12

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v1

    if-le v1, v2, :cond_12

    .line 1171
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v4, 0x7f0701ab

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    :cond_12
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/tencent/mm/ao/b;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYb:Z

    return v0
.end method

.method private aLn()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 353
    :cond_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 348
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/conversation/x;

    .line 351
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tencent/mm/ui/conversation/x;->gYo:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private aLo()V
    .locals 1

    .prologue
    .line 1257
    new-instance v0, Lcom/tencent/mm/ui/conversation/u;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/conversation/u;-><init>(Lcom/tencent/mm/ui/conversation/s;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 1277
    return-void
.end method

.method static synthetic aLp()J
    .locals 2

    .prologue
    .line 75
    sget-wide v0, Lcom/tencent/mm/ui/conversation/s;->gYk:J

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/conversation/s;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/conversation/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYe:Z

    return v0
.end method

.method static synthetic ci(J)J
    .locals 0
    .parameter

    .prologue
    .line 75
    sput-wide p0, Lcom/tencent/mm/ui/conversation/s;->gYk:J

    return-wide p0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/conversation/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYl:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/conversation/s;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/s;->aLo()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/ui/conversation/s;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYm:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method private f(Lcom/tencent/mm/storage/n;)Ljava/lang/CharSequence;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 312
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getStatus()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 313
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v1, 0x7f07019f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/mm/pluginsdk/e/e;->b(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/conversation/s;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/tencent/mm/ui/bc;->ca(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/ui/conversation/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYl:Z

    return v0
.end method

.method private static iM(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 876
    .line 877
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 879
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 881
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static xb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1178
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1179
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/i;->jh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public FZ()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 423
    const-string v0, "MicroMsg.ConversationAdapter"

    const-string v1, "dkpno resetCursor search:%b"

    new-array v2, v7, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gpY:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gpY:Z

    if-eqz v0, :cond_4

    .line 425
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    .line 426
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->cKz:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/s;->cIs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/storage/o;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v0, v5

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->cKz:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->cKz:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->cKz:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, "username"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v4, "@chatroom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 451
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_1
    const-string v4, "MicroMsg.ConversationAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "block user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 456
    :cond_2
    const-string v3, "officialaccounts"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    const-string v3, "helper_entry"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/s;->cIs:Ljava/lang/String;

    const-string v5, "@micromsg.with.all.biz.qq.com"

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/tencent/mm/storage/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v0, v7

    .line 465
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/conversation/s;->setCursor(Landroid/database/Cursor;)V

    .line 475
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXW:Lcom/tencent/mm/ui/conversation/z;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->cIs:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXW:Lcom/tencent/mm/ui/conversation/z;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/s;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 479
    :cond_3
    invoke-super {p0}, Lcom/tencent/mm/ui/bc;->notifyDataSetChanged()V

    .line 480
    return-void

    .line 471
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/w;->chM:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/conversation/s;->cKz:Ljava/util/List;

    sget-object v3, Lcom/tencent/mm/g/a;->cgb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/tencent/mm/storage/o;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/s;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/s;->FZ()V

    .line 329
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    check-cast p1, Lcom/tencent/mm/storage/n;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gpY:Z

    if-eqz v0, :cond_4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/n;

    invoke-direct {p1}, Lcom/tencent/mm/storage/n;-><init>()V

    :cond_0
    const-string v0, ""

    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/n;->convertFrom(Landroid/database/Cursor;)V

    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/mm/storage/i;->f(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tI(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/i;->convertFrom(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/k;->y(Lcom/tencent/mm/storage/i;)V

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Lcom/tencent/mm/storage/n;

    invoke-direct {p1}, Lcom/tencent/mm/storage/n;-><init>()V

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/tencent/mm/storage/n;->setStatus(I)V

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/tencent/mm/storage/n;->o(J)V

    invoke-virtual {p1, v4}, Lcom/tencent/mm/storage/n;->bZ(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v2, 0x7f070411

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/mm/storage/n;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/n;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/tencent/mm/storage/n;->bY(I)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/n;->bP(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    new-instance p1, Lcom/tencent/mm/storage/n;

    invoke-direct {p1}, Lcom/tencent/mm/storage/n;-><init>()V

    :cond_5
    const-string v0, ""

    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/n;->convertFrom(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1215
    if-eqz p3, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/tencent/mm/ui/conversation/s;->ca(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/s;->cPL:Lcom/tencent/mm/ui/base/cy;

    .line 281
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/db;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/s;->cPM:Lcom/tencent/mm/ui/base/db;

    .line 277
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/s;->cPK:Lcom/tencent/mm/ui/base/dc;

    .line 273
    return-void
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1224
    const-string v0, "MicroMsg.ConversationAdapter"

    const-string v1, "dkpno onNotifyChange mIsFront:%b mChangedBackground:%b event:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYb:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYc:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYb:Z

    if-eqz v0, :cond_2

    .line 1229
    const-string v0, "MicroMsg.ConversationAdapter"

    const-string v1, "dkpno postTryNotify needNotify:%b timerStopped:%b"

    new-array v2, v6, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYl:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYm:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v3}, Lcom/tencent/mm/sdk/platformtools/ay;->azG()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/tencent/mm/ui/conversation/s;->gYl:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYm:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/s;->aLo()V

    .line 1233
    :cond_1
    :goto_0
    return-void

    .line 1231
    :cond_2
    iput-boolean v4, p0, Lcom/tencent/mm/ui/conversation/s;->gYc:Z

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/conversation/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/n;

    .line 546
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 547
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYj:Lcom/tencent/mm/ui/conversation/y;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/conversation/y;->uK(Ljava/lang/String;)V

    .line 551
    if-nez p2, :cond_c

    .line 552
    new-instance v2, Lcom/tencent/mm/ui/conversation/aa;

    invoke-direct {v2}, Lcom/tencent/mm/ui/conversation/aa;-><init>()V

    .line 554
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v3, 0x7f0300c3

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 555
    const v1, 0x7f0a0290

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->cMS:Landroid/widget/ImageView;

    .line 557
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 558
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/pluginsdk/ui/a;

    .line 559
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYa:Lcom/tencent/mm/pluginsdk/ui/e;

    if-eqz v3, :cond_0

    .line 560
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYa:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/pluginsdk/ui/e;->a(Lcom/tencent/mm/pluginsdk/ui/f;)V

    .line 563
    :cond_0
    const v1, 0x7f0a0292

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    .line 564
    const v1, 0x7f0a0293

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    .line 565
    const v1, 0x7f0a0294

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    .line 566
    const v1, 0x7f0a0156

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->cPT:Landroid/widget/TextView;

    .line 567
    const v1, 0x7f0a0296

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYC:Landroid/widget/ImageView;

    .line 568
    const v1, 0x7f0a0295

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYD:Landroid/widget/ImageView;

    .line 569
    const v1, 0x7f0a0291

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYG:Landroid/view/View;

    .line 570
    const v1, 0x7f0a0297

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYE:Landroid/widget/ImageView;

    .line 571
    const v1, 0x7f0a0298

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYF:Landroid/widget/ImageView;

    .line 576
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 578
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXZ:F

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->Q(F)V

    .line 579
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXZ:F

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->Q(F)V

    .line 580
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXY:F

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->Q(F)V

    .line 582
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 583
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x4

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 584
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 586
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dA(Z)V

    .line 587
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dA(Z)V

    .line 588
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dA(Z)V

    .line 590
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const/16 v5, 0xa0

    invoke-static {v3, v5}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setMaxWidth(I)V

    .line 591
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->jb()V

    .line 593
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXX:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 599
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/conversation/x;

    .line 602
    const-string v3, "MicroMsg.ConversationAdapter"

    const-string v5, "dkpno getview username:%s "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    if-nez v1, :cond_5

    .line 605
    new-instance v3, Lcom/tencent/mm/ui/conversation/x;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/ui/conversation/x;-><init>(Lcom/tencent/mm/ui/conversation/s;B)V

    .line 607
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYj:Lcom/tencent/mm/ui/conversation/y;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/conversation/y;->aLq()Lcom/tencent/mm/storage/i;

    move-result-object v5

    .line 608
    if-eqz v5, :cond_d

    .line 609
    iget v1, v5, Lcom/tencent/mm/storage/i;->bUi:I

    iput v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYr:I

    .line 610
    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/x;->DY:I

    .line 616
    :goto_1
    if-eqz v5, :cond_e

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYw:Z

    .line 617
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rg()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYy:Z

    .line 618
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYx:Z

    .line 619
    invoke-static {v4}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->dtw:Z

    .line 623
    iget-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->dtw:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYx:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYv:Z

    .line 625
    const/4 v1, 0x0

    iput v1, v3, Lcom/tencent/mm/ui/conversation/x;->dws:I

    .line 626
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/s;->iM(Ljava/lang/String;)I

    move-result v1

    .line 627
    const/16 v6, 0x22

    if-ne v1, v6, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rO()I

    move-result v1

    if-nez v1, :cond_3

    .line 628
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 629
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 631
    const-string v6, "qmessage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "floatbottle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 632
    :cond_1
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 633
    if-eqz v6, :cond_2

    array-length v7, v6

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    :cond_2
    new-instance v6, Lcom/tencent/mm/modelvoice/bf;

    invoke-direct {v6, v1}, Lcom/tencent/mm/modelvoice/bf;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/bf;->Ev()Z

    move-result v1

    if-nez v1, :cond_3

    .line 641
    const/4 v1, 0x1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/x;->dws:I

    .line 646
    :cond_3
    iget-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->dtw:Z

    invoke-static {v5, v4, v1}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 647
    iget-boolean v6, v3, Lcom/tencent/mm/ui/conversation/x;->dtw:Z

    if-eqz v6, :cond_12

    if-nez v1, :cond_12

    .line 648
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    const v6, 0x7f07022b

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/conversation/x;->nickName:Ljava/lang/CharSequence;

    .line 654
    :goto_6
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/conversation/s;->f(Lcom/tencent/mm/storage/n;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYo:Ljava/lang/CharSequence;

    .line 655
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iget-object v6, p0, Lcom/tencent/mm/ui/conversation/s;->gYj:Lcom/tencent/mm/ui/conversation/y;

    iget-boolean v6, v3, Lcom/tencent/mm/ui/conversation/x;->gYv:Z

    invoke-direct {p0, v0, v1, v6}, Lcom/tencent/mm/ui/conversation/s;->a(Lcom/tencent/mm/storage/n;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYp:Ljava/lang/CharSequence;

    .line 658
    const-string v1, "MicroMsg.ConversationAdapter"

    const-string v6, "dkpno getview conv == null username:%s, convItem.lastMsg:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/tencent/mm/ui/conversation/x;->gYp:Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, -0x1

    :goto_7
    iput v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYq:I

    .line 673
    invoke-static {v0}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/n;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYs:Z

    .line 674
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    invoke-static {v0}, Lcom/tencent/mm/storage/o;->e(Lcom/tencent/mm/storage/n;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYt:Z

    .line 676
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->rf()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYu:Z

    .line 678
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v1

    .line 679
    const-string v5, "zh_CN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "zh_TW"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_4
    const/4 v1, 0x1

    :goto_9
    iput-boolean v1, v3, Lcom/tencent/mm/ui/conversation/x;->gmq:Z

    .line 680
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 684
    :cond_5
    iget-object v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYo:Ljava/lang/CharSequence;

    if-nez v3, :cond_6

    .line 685
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/conversation/s;->f(Lcom/tencent/mm/storage/n;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYo:Ljava/lang/CharSequence;

    .line 688
    :cond_6
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYv:Z

    if-eqz v3, :cond_15

    .line 689
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 694
    :goto_a
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getWidth()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/booter/w;->bt(I)V

    .line 695
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Lcom/tencent/mm/booter/w;->bu(I)V

    .line 696
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/booter/w;->a(Landroid/text/TextPaint;)V

    .line 698
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "@t.qq.com"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->aHM()V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dz(Z)V

    :goto_b
    iget v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYq:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_17

    iget-object v5, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v5, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->nk(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dy(Z)V

    .line 699
    :goto_c
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, v1, Lcom/tencent/mm/ui/conversation/x;->nickName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, v1, Lcom/tencent/mm/ui/conversation/x;->gYo:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, v1, Lcom/tencent/mm/ui/conversation/x;->gYp:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->dtw:Z

    if-eqz v3, :cond_18

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYx:Z

    if-eqz v3, :cond_18

    .line 709
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYC:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    :goto_d
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYD:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->cMS:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 728
    iget-boolean v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXV:Z

    if-eqz v3, :cond_8

    .line 729
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYj:Lcom/tencent/mm/ui/conversation/y;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    if-nez v1, :cond_1a

    :cond_7
    const-string v3, "MicroMsg.ConversationAdapter"

    const-string v4, "handle show tip cnt, but conversation or viewholder is null"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_8
    :goto_e
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYs:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYt:Z

    if-eqz v3, :cond_9

    .line 735
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 736
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/o;->d(Lcom/tencent/mm/storage/n;)Z

    .line 740
    :cond_9
    iget-boolean v1, v1, Lcom/tencent/mm/ui/conversation/x;->gYt:Z

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_25

    .line 741
    const v1, 0x7f0a028f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f020195

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 747
    :goto_f
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    .line 748
    new-instance v1, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v3, v1, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/tencent/mm/c/a/gz;->bQU:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    invoke-static {v0, v5, v6, v7}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;IJ)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v4, v4, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rQ()J

    move-result-wide v4

    invoke-static {v0, v3, v4, v5}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;IJ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/n;->p(J)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tencent/mm/pluginsdk/aj;->oZ(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_b
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYE:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 750
    :goto_10
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/mm/pluginsdk/ap;->kn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v2, Lcom/tencent/mm/ui/conversation/aa;->gYF:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    :goto_11
    return-object p2

    .line 596
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/conversation/aa;

    move-object v2, v1

    goto/16 :goto_0

    .line 612
    :cond_d
    const/4 v1, -0x1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/x;->gYr:I

    .line 613
    const/4 v1, -0x1

    iput v1, v3, Lcom/tencent/mm/ui/conversation/x;->DY:I

    goto/16 :goto_1

    .line 616
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 617
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 618
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 623
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 650
    :cond_12
    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->context:Landroid/content/Context;

    iget-boolean v6, v3, Lcom/tencent/mm/ui/conversation/x;->dtw:Z

    invoke-static {v5, v4, v6}, Lcom/tencent/mm/model/w;->a(Lcom/tencent/mm/storage/i;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-virtual {v7}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v1, v6, v7}, Lcom/tencent/mm/ao/b;->f(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/conversation/x;->nickName:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 672
    :pswitch_1
    const/4 v1, -0x1

    goto/16 :goto_7

    :pswitch_2
    const v1, 0x7f020571

    goto/16 :goto_7

    :pswitch_3
    const/4 v1, -0x1

    goto/16 :goto_7

    :pswitch_4
    const v1, 0x7f02056f

    goto/16 :goto_7

    .line 676
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 679
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 691
    :cond_15
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    iget v6, v1, Lcom/tencent/mm/ui/conversation/x;->dws:I

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_a

    .line 698
    :cond_16
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dz(Z)V

    goto/16 :goto_b

    :cond_17
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYB:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->dy(Z)V

    goto/16 :goto_c

    .line 711
    :cond_18
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYu:Z

    if-eqz v3, :cond_19

    .line 712
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYC:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 714
    :cond_19
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYC:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 729
    :cond_1a
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->cPT:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYG:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/w;->cT(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/aa;->gYG:Landroid/view/View;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_1b

    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_e

    :cond_1b
    const/4 v3, 0x4

    goto :goto_12

    :cond_1c
    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/aa;->foP:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYw:Z

    if-eqz v3, :cond_1e

    iget v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYr:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1e

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    :goto_13
    invoke-virtual {v4, v3}, Lcom/tencent/mm/ui/base/NoMeasuredTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYw:Z

    if-eqz v3, :cond_1d

    iget v3, v1, Lcom/tencent/mm/ui/conversation/x;->DY:I

    if-nez v3, :cond_1f

    :cond_1d
    const-string v3, "MicroMsg.ConversationAdapter"

    const-string v4, "handle show tip count, but talker is null"

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1e
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gXT:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    goto :goto_13

    :cond_1f
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYu:Z

    if-eqz v3, :cond_21

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYy:Z

    if-eqz v3, :cond_21

    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/aa;->gYG:Landroid/view/View;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_20

    const/4 v3, 0x0

    :goto_14
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_20
    const/4 v3, 0x4

    goto :goto_14

    :cond_21
    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->dtw:Z

    if-eqz v3, :cond_23

    iget-boolean v3, v1, Lcom/tencent/mm/ui/conversation/x;->gYx:Z

    if-eqz v3, :cond_23

    iget-object v4, v2, Lcom/tencent/mm/ui/conversation/aa;->gYG:Landroid/view/View;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_22

    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_22
    const/4 v3, 0x4

    goto :goto_15

    :cond_23
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_24

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->cPT:Landroid/widget/TextView;

    const v4, 0x7f070a7d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->cPT:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    :cond_24
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->cPT:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->cPT:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 743
    :cond_25
    const v1, 0x7f0a028f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f020070

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_f

    .line 748
    :cond_26
    iget-object v3, v2, Lcom/tencent/mm/ui/conversation/aa;->gYE:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYE:Landroid/widget/ImageView;

    const v3, 0x7f0207df

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    :cond_27
    iget-object v1, v2, Lcom/tencent/mm/ui/conversation/aa;->gYE:Landroid/widget/ImageView;

    const v3, 0x7f0207dd

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_10

    .line 750
    :cond_28
    iget-object v0, v2, Lcom/tencent/mm/ui/conversation/aa;->gYF:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_11

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYm:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 378
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYh:Lcom/tencent/mm/ui/conversation/v;

    .line 379
    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYf:Lcom/tencent/mm/ui/conversation/w;

    .line 380
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/tencent/mm/ui/conversation/s;->gXU:Ljava/util/HashMap;

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/s;->closeCursor()V

    .line 382
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/s;->aDU()V

    .line 383
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->cPN:Lcom/tencent/mm/ui/base/cz;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->cPN:Lcom/tencent/mm/ui/base/cz;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/cz;->aij()V

    .line 341
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYb:Z

    .line 342
    return-void
.end method

.method public final onResume()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    const-string v2, "MicroMsg.ConversationAdapter"

    const-string v3, "dkpno onResume mIsFront:%b  mNeedReCreate:%b mChangedBackground:%b mContactBackground:%b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/tencent/mm/ui/conversation/s;->gYb:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lcom/tencent/mm/ui/conversation/s;->gYd:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcom/tencent/mm/ui/conversation/s;->gYc:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/tencent/mm/ui/conversation/s;->gYe:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYb:Z

    .line 358
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    const-string v3, "MM/dd"

    invoke-static {v3, v2}, Lcom/tencent/mm/pluginsdk/e/d;->a(Ljava/lang/CharSequence;Landroid/text/format/Time;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/s;->gYi:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    iput-object v2, p0, Lcom/tencent/mm/ui/conversation/s;->gYi:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/s;->aLn()V

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYh:Lcom/tencent/mm/ui/conversation/v;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYh:Lcom/tencent/mm/ui/conversation/v;

    .line 363
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYd:Z

    .line 365
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYc:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/s;->gYe:Z

    if-eqz v0, :cond_3

    .line 366
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/tencent/mm/ui/bc;->ca(Ljava/lang/String;)V

    .line 367
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYc:Z

    .line 368
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/s;->gYe:Z

    .line 370
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method
