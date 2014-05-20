.class public final Lcom/tencent/mm/ui/contact/i;
.super Lcom/tencent/mm/ui/h;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/ar;


# static fields
.field public static final gSp:Landroid/content/res/ColorStateList;

.field public static final gSq:Landroid/content/res/ColorStateList;


# instance fields
.field private cIs:Ljava/lang/String;

.field protected cKz:Ljava/util/List;

.field protected cPK:Lcom/tencent/mm/ui/base/dc;

.field protected cPL:Lcom/tencent/mm/ui/base/cy;

.field protected cPN:Lcom/tencent/mm/ui/base/cz;

.field private cqO:Lcom/tencent/mm/ui/applet/b;

.field private dKE:I

.field private dKF:Ljava/util/List;

.field protected dKG:Ljava/lang/String;

.field protected dKH:[I

.field private dKI:[Ljava/lang/String;

.field private dKJ:Z

.field protected dNc:Lcom/tencent/mm/ui/base/db;

.field private dkP:Z

.field private gKD:[Ljava/lang/String;

.field protected gRX:Ljava/lang/String;

.field private gRY:Ljava/util/List;

.field private gRZ:I

.field protected gSa:Lcom/tencent/mm/ui/contact/m;

.field private gSc:Z

.field private gSd:Z

.field public gSi:Ljava/util/HashMap;

.field private gSj:Ljava/util/Set;

.field private gSk:Lcom/tencent/mm/ui/contact/k;

.field private gSl:Ljava/lang/String;

.field private gSm:Ljava/util/LinkedList;

.field private gSn:Z

.field private gSo:Ljava/util/HashMap;

.field gSr:Landroid/view/View$OnClickListener;

.field private gSs:Landroid/util/SparseArray;

.field private gSt:Landroid/util/SparseArray;

.field private gSu:Ljava/util/HashSet;

.field sb:Ljava/lang/StringBuilder;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 750
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0100

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/contact/i;->gSp:Landroid/content/res/ColorStateList;

    .line 753
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c002e

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/contact/i;->gSq:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/h;-><init>(Landroid/content/Context;)V

    .line 105
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    .line 112
    iput v1, p0, Lcom/tencent/mm/ui/contact/i;->gRZ:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cIs:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/i;->gKD:[Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/tencent/mm/ui/base/MMSlideDelView;->aHp()Lcom/tencent/mm/ui/base/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cPN:Lcom/tencent/mm/ui/base/cz;

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSj:Ljava/util/Set;

    .line 129
    iput v1, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    .line 131
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/i;->dKJ:Z

    .line 134
    iput-object v2, p0, Lcom/tencent/mm/ui/contact/i;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 136
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/i;->dkP:Z

    .line 138
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/i;->gSc:Z

    .line 140
    iput-boolean v1, p0, Lcom/tencent/mm/ui/contact/i;->gSd:Z

    .line 640
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSm:Ljava/util/LinkedList;

    .line 644
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSo:Ljava/util/HashMap;

    .line 811
    new-instance v0, Lcom/tencent/mm/ui/contact/j;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/j;-><init>(Lcom/tencent/mm/ui/contact/i;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSr:Landroid/view/View$OnClickListener;

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    .line 1021
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSs:Landroid/util/SparseArray;

    .line 1023
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSt:Landroid/util/SparseArray;

    .line 1152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSu:Ljava/util/HashSet;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSi:Ljava/util/HashMap;

    .line 168
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/i;->context:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    .line 171
    iput p4, p0, Lcom/tencent/mm/ui/contact/i;->type:I

    .line 172
    iput-boolean v3, p0, Lcom/tencent/mm/ui/contact/i;->gSc:Z

    .line 173
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKF:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gRY:Ljava/util/List;

    .line 175
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSl:Ljava/lang/String;

    .line 176
    const-string v0, "MiscroMsg.AddressDrawWithCacheAdapter"

    iput-object v0, p0, Lcom/tencent/mm/ui/h;->TAG:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private a(Lcom/tencent/mm/storage/a;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 959
    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    if-ge p2, v0, :cond_0

    .line 960
    const/16 v0, 0x20

    .line 963
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/i;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSo:Ljava/util/HashMap;

    return-object v0
.end method

.method private aKn()Z
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    const-string v1, "@micromsg.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    const-string v1, "@all.contact.without.chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/tencent/mm/storage/a;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0703f4

    .line 971
    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    if-ge p2, v0, :cond_1

    .line 972
    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/contact/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    :cond_0
    :goto_0
    return-object v0

    .line 974
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    .line 979
    const-string v0, ""

    goto :goto_0

    .line 981
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    .line 982
    const-string v0, "#"

    goto :goto_0

    .line 984
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_4

    .line 985
    const v0, 0x7f0703f7

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 987
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_5

    .line 988
    const v0, 0x7f070942

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 990
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 991
    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/contact/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 994
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 995
    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 999
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gSs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/a;->rl()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1014
    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gSs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1018
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final VG()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    const-string v0, "MicroMsg.AddressAdapter"

    const-string v1, "getSections"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKI:[Ljava/lang/String;

    return-object v0
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1156
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    if-ne p2, v0, :cond_0

    move-object v0, p3

    .line 1157
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gSu:Ljava/util/HashSet;

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-super {p0, p3, v0}, Lcom/tencent/mm/ui/h;->i(Ljava/lang/Object;I)V

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    const-string v0, "MicroMsg.AddressAdapter"

    const-string v1, "newcursor is stranger \uff0creturn"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/base/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/i;->cPL:Lcom/tencent/mm/ui/base/cy;

    .line 206
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/db;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/i;->dNc:Lcom/tencent/mm/ui/base/db;

    .line 202
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/i;->cPK:Lcom/tencent/mm/ui/base/dc;

    .line 198
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/contact/k;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/i;->gSk:Lcom/tencent/mm/ui/contact/k;

    .line 152
    return-void
.end method

.method public final a(Ljava/util/HashSet;[Landroid/util/SparseArray;)[Landroid/util/SparseArray;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1112
    array-length v0, p2

    new-array v8, v0, [Landroid/util/SparseArray;

    .line 1113
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1114
    const-string v0, "weixin"

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1116
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/i;->aKn()Z

    move-result v5

    iget-boolean v6, p0, Lcom/tencent/mm/ui/contact/i;->gSc:Z

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/storage/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)Landroid/database/Cursor;

    move-result-object v1

    .line 1117
    instance-of v0, v1, Linfo/guardianproject/database/MergeHeapCursor;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 1118
    check-cast v0, Linfo/guardianproject/database/MergeHeapCursor;

    .line 1119
    invoke-virtual {v0}, Linfo/guardianproject/database/MergeHeapCursor;->getCursors()[Linfo/guardianproject/database/IHeapCursor;

    move-result-object v3

    .line 1120
    array-length v4, v3

    move v2, v7

    .line 1121
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1123
    aget-object v0, v3, v2

    const/16 v5, 0x1388

    invoke-interface {v0, v5}, Linfo/guardianproject/database/IHeapCursor;->setPageSize(I)V

    .line 1124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    aput-object v0, v8, v2

    move v0, v7

    .line 1125
    :goto_1
    aget-object v5, v3, v2

    invoke-interface {v5}, Linfo/guardianproject/database/IHeapCursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1126
    aget-object v5, v8, v2

    aget-object v6, v3, v2

    invoke-interface {v6, v7}, Linfo/guardianproject/database/IHeapCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1121
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1130
    :cond_1
    aget-object v0, v3, v7

    invoke-interface {v0}, Linfo/guardianproject/database/IHeapCursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    .line 1139
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1140
    const-string v0, "MicroMsg.AddressAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshPosistion last :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-object v8

    .line 1133
    :cond_3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    aput-object v0, v8, v7

    move v0, v7

    .line 1134
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    aget-object v2, v8, v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final aB(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_2

    .line 225
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->type:I

    if-nez v0, :cond_4

    .line 232
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/w;->tL()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_4
    return-void
.end method

.method public final aDX()Linfo/guardianproject/database/IHeapCursor;
    .locals 9

    .prologue
    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "weixin"

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/i;->aKn()Z

    move-result v5

    iget-boolean v6, p0, Lcom/tencent/mm/ui/contact/i;->gSc:Z

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "MicroMsg.AddressAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kevin setCursor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Linfo/guardianproject/database/IHeapCursor;

    return-object v0
.end method

.method public final aKo()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/i;->gSd:Z

    .line 241
    return-void
.end method

.method protected final aKp()V
    .locals 10

    .prologue
    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/i;->aDW()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    .line 567
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gKD:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/i;->gKD:[Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/i;->gKD:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKI:[Ljava/lang/String;

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 601
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    array-length v3, v1

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_5

    aget v2, v1, v0

    .line 602
    iget-object v4, p0, Lcom/tencent/mm/ui/contact/i;->gSj:Ljava/util/Set;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/i;->getCount()I

    move-result v4

    .line 573
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/i;->hasLoadAllData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 576
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 577
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    .line 578
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKI:[Ljava/lang/String;

    .line 579
    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    move v3, v0

    move v1, v2

    :goto_2
    if-ge v3, v4, :cond_3

    .line 580
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/contact/i;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/a;

    .line 581
    if-eqz v0, :cond_1

    .line 582
    invoke-direct {p0, v0, v3}, Lcom/tencent/mm/ui/contact/i;->b(Lcom/tencent/mm/storage/a;I)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 584
    iget-object v8, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    iget v9, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    sub-int v9, v3, v9

    aput v9, v8, v1

    .line 585
    iget-object v8, p0, Lcom/tencent/mm/ui/contact/i;->dKI:[Ljava/lang/String;

    aput-object v0, v8, v1

    .line 586
    add-int/lit8 v0, v1, 0x1

    .line 579
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    .line 589
    :cond_1
    const-string v0, "MicroMsg.AddressAdapter"

    const-string v8, "newCursor getItem is null"

    invoke-static {v0, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_3

    .line 592
    :cond_3
    const-string v0, "MicroMsg.AddressAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "newCursor resetShowHead by Memory : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "favourCount : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 595
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/i;->cIs:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    .line 596
    iget-object v3, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/i;->gRX:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/contact/i;->cIs:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/i;->cKz:Ljava/util/List;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/mm/model/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/ui/contact/i;->dKI:[Ljava/lang/String;

    .line 597
    const-string v3, "MicroMsg.AddressAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kevin resetShowHead part1 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :cond_5
    return-void
.end method

.method public final aKq()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cPN:Lcom/tencent/mm/ui/base/cz;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/cz;->aik()V

    .line 639
    return-void
.end method

.method public final aKr()V
    .locals 2

    .prologue
    .line 1148
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/tencent/mm/ui/h;->i(Ljava/lang/Object;I)V

    .line 1149
    return-void
.end method

.method public final av(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSu:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/h;->i(Ljava/lang/Object;I)V

    .line 74
    return-void
.end method

.method public final clearCache()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 648
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/i;->gSn:Z

    .line 651
    return-void
.end method

.method public final synthetic createItem()Linfo/guardianproject/database/CursorDataItem;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/tencent/mm/storage/a;

    invoke-direct {v0}, Lcom/tencent/mm/storage/a;-><init>()V

    return-object v0
.end method

.method public final dP(Z)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/tencent/mm/ui/contact/i;->dkP:Z

    .line 210
    return-void
.end method

.method public final detach()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cqO:Lcom/tencent/mm/ui/applet/b;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cqO:Lcom/tencent/mm/ui/applet/b;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/applet/b;->detach()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cqO:Lcom/tencent/mm/ui/applet/b;

    .line 194
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 1008
    invoke-super {p0}, Lcom/tencent/mm/ui/h;->getCount()I

    move-result v0

    .line 1009
    return v0
.end method

.method public final getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 502
    .line 503
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    aget p1, v0, p1

    .line 506
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f03001f

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 655
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/i;->gSn:Z

    if-nez v0, :cond_1

    move v0, v5

    :goto_0
    if-ge v0, v10, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gSm:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/i;->context:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v9, p0, Lcom/tencent/mm/ui/contact/i;->gSn:Z

    .line 656
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/contact/i;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/a;

    .line 657
    if-nez p2, :cond_5

    .line 659
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gSm:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 660
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gSm:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 661
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/i;->gSm:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-object v2, v1

    .line 665
    :goto_1
    new-instance v3, Lcom/tencent/mm/ui/contact/l;

    invoke-direct {v3}, Lcom/tencent/mm/ui/contact/l;-><init>()V

    .line 667
    const v1, 0x7f0a0078

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/l;->cMT:Landroid/widget/TextView;

    .line 668
    const v1, 0x7f0a007f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/l;->gSg:Landroid/widget/TextView;

    .line 669
    const v1, 0x7f0a0089

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/AddressView;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    .line 670
    const v1, 0x7f0a0088

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/l;->gSx:Landroid/widget/TextView;

    .line 671
    const v1, 0x7f0a0087

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/contact/l;->gSy:Landroid/view/View;

    .line 672
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->gSa:Lcom/tencent/mm/ui/contact/m;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/m;->aKu()Lcom/tencent/mm/pluginsdk/ui/e;

    move-result-object v1

    iget-object v6, v3, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/pluginsdk/ui/e;->a(Lcom/tencent/mm/pluginsdk/ui/f;)V

    .line 673
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v2

    move-object v2, v3

    .line 677
    :goto_2
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/contact/i;->getItem(I)Linfo/guardianproject/database/CursorDataItem;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/a;

    if-nez v1, :cond_6

    const/4 v1, -0x1

    :goto_3
    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/contact/i;->a(Lcom/tencent/mm/storage/a;I)I

    move-result v3

    iget-boolean v6, p0, Lcom/tencent/mm/ui/contact/i;->dKJ:Z

    if-eqz v6, :cond_8

    if-nez p1, :cond_7

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/contact/i;->b(Lcom/tencent/mm/storage/a;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :goto_4
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/a;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Lcom/tencent/mm/pluginsdk/ui/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/a;->rJ()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/ar;->ub()Lcom/tencent/mm/model/av;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/a;->rJ()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/tencent/mm/model/av;->cq(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/tencent/mm/p/u;->eN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/AddressView;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 680
    :goto_5
    iget v1, v0, Lcom/tencent/mm/storage/a;->field_deleteFlag:I

    if-ne v1, v9, :cond_b

    iget-object v1, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    sget-object v3, Lcom/tencent/mm/ui/contact/i;->gSq:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/AddressView;->setNickNameTextColor(Landroid/content/res/ColorStateList;)V

    :goto_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/a;->aAd()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_d

    :try_start_0
    iget-object v6, p0, Lcom/tencent/mm/ui/contact/i;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/a;->getUsername()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/a;->rr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/a;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    :goto_7
    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/mm/ui/contact/i;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/AddressView;->getNickNameSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v6, v1, v3}, Lcom/tencent/mm/ao/b;->f(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_8
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/AddressView;->setName(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/storage/a;->aAc()V

    .line 682
    :goto_9
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AddressView;->updatePositionFlag()V

    .line 684
    iget v0, v0, Lcom/tencent/mm/storage/a;->field_deleteFlag:I

    if-ne v0, v9, :cond_e

    .line 685
    iget-object v0, v2, Lcom/tencent/mm/ui/contact/l;->gSx:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    :goto_a
    return-object p2

    .line 663
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->context:Landroid/content/Context;

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 675
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/contact/l;

    move-object v2, v1

    goto/16 :goto_2

    .line 677
    :cond_6
    add-int/lit8 v3, p1, -0x1

    invoke-direct {p0, v1, v3}, Lcom/tencent/mm/ui/contact/i;->a(Lcom/tencent/mm/storage/a;I)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    if-lez p1, :cond_8

    if-eq v3, v1, :cond_8

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/contact/i;->b(Lcom/tencent/mm/storage/a;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->cMT:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/l;->cMT:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 678
    :cond_9
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/AddressView;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    :cond_a
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/AddressView;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 680
    :cond_b
    iget-object v1, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    sget-object v3, Lcom/tencent/mm/ui/contact/i;->gSp:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/AddressView;->setNickNameTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_6

    :cond_c
    move-object v1, v3

    goto/16 :goto_7

    :catch_0
    move-exception v1

    move-object v1, v4

    goto :goto_8

    :cond_d
    iget-object v3, v2, Lcom/tencent/mm/ui/contact/l;->gSw:Lcom/tencent/mm/ui/AddressView;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/ui/AddressView;->setName(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 687
    :cond_e
    iget-object v0, v2, Lcom/tencent/mm/ui/contact/l;->gSx:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a
.end method

.method public final i(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    check-cast p1, Lcom/tencent/mm/ui/contact/m;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/i;->gSa:Lcom/tencent/mm/ui/contact/m;

    .line 181
    return-void
.end method

.method public final synthetic i(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/contact/i;->av(Ljava/lang/String;I)V

    return-void
.end method

.method public final notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSl:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->dKH:[I

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/i;->aKp()V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/i;->aDW()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    .line 91
    const-string v0, "MicroMsg.AddressAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newcursor favourCount %d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/contact/i;->dKE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Lcom/tencent/mm/ui/h;->notifyDataSetChanged()V

    .line 93
    return-void
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/i;->gSu:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 81
    invoke-super {p0}, Lcom/tencent/mm/ui/h;->pause()V

    .line 82
    return-void
.end method

.method public final rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter

    .prologue
    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1090
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1092
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1094
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1096
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/k;->ar(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v1

    .line 1097
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1098
    new-instance v4, Lcom/tencent/mm/storage/a;

    invoke-direct {v4}, Lcom/tencent/mm/storage/a;-><init>()V

    .line 1099
    invoke-virtual {v4, v1}, Lcom/tencent/mm/storage/a;->convertFrom(Landroid/database/Cursor;)V

    .line 1100
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1102
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1103
    const-string v1, "MicroMsg.AddressAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rebulidAllChangeData :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return-object v0
.end method

.method public final wH(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 244
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/i;->dKJ:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/i;->dKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "MicroMsg.AddressAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dkvoice ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/i;->cIs:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/i;->gKD:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/tencent/mm/ui/contact/i;->av(Ljava/lang/String;I)V

    .line 245
    return-void

    .line 244
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
